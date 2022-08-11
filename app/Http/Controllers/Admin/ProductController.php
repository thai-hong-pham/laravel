<?php

namespace App\Http\Controllers\Admin;

use App\Components\Recusive;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    use StorageImageTrait;

    private $category;
    public function __construct(Category $category, Product $product, ProductImage $productImage)
    {
        $this->product = $product;
        $this->category = $category;
        $this->productImage = $productImage;
    }
    public function index()
    {
        return view('admin.products.index');
    }

    public function create()
    {
        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.products.add', compact('htmlOption'));
    }

    public function store(Request $request)
    {

        $dataProductCreate = [
            'name' => $request->name,
            'price' => $request->price,
            'content' => $request->contents,
            'user_id' => auth()->id(),
            'category_id' => $request->category_id
        ];
        $dataUploadFeatureImage = $this->storageTraitUpload($request, 'feature_image_path', 'products');
        if (!empty($dataUploadFeatureImage)) {
            $dataProductCreate['feature_image_name'] = $dataUploadFeatureImage['file_name'];
            $dataProductCreate['feature_image_path'] = $dataUploadFeatureImage['file_path'];
        }
        $product = $this->product->create($dataProductCreate);

        // Insert data to product_images
        if ($request->hasFile('image_path')) {
            foreach($request->image_path as $fileItem){
                $dataProductImageDetail = $this->storageTraitUploadMultiple($fileItem,'products');
                $product->images()->create([
                    'image_path' => $dataProductImageDetail['file_path'],
                    'image_name' => $dataProductImageDetail['file_name']
                ]);
            }
        }
    }

    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }
}
