<div class="table-responsive cart_info" data-url="{{ route('deleteCart') }}">
    <table class="table table-condensed update_cart_url" data-url="{{ route('updateCart') }}">
        <thead>
            <tr class="cart_menu">
                <td class="item" style="text-align: center">Product</td>
                <td class="image" style="text-align: center">Image</td>
                <td class="price" style="text-align: center">Price</td>
                <td class="quantity" style="text-align: center">Quantity</td>
                <td class="total" style="text-align: center">Total</td>
                <td colspan="2" style="text-align: center">Action</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            @php
                $total = 0;
            @endphp
            @if (!session()->get('cart') == 0)
                @foreach ($carts as $id => $cartItem)
                    @php
                        $total += $cartItem['quantity'] * $cartItem['price'];
                    @endphp
                    <tr>

                        <td class="cart_description">
                            <h4><a href="">{{ $cartItem['name'] }}</a></h4>
                        </td>
                        <td class="cart_product">
                            <a href=""><img width="200px" src="{{ $cartItem['image'] }}" alt=""></a>
                        </td>
                        <td class="cart_price">
                            <p>{{ number_format($cartItem['price']) }} VNĐ</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <input class="cart_quantity_input" type="number" name="quantity"
                                    value="{{ $cartItem['quantity'] }}" autocomplete="off" size="2"
                                    min="1">
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">
                                {{ number_format($cartItem['quantity'] * $cartItem['price']) }}
                                VNĐ</p>
                        </td>
                        <td>
                            <a data-id="{{ $id }}" class="btn btn-primary cart_update mb-3"
                                href="">Update</a>
                        </td>
                        <td>
                            <a data-id="{{ $id }}" class="btn btn-danger cart_delete"
                                href="">Delete</a>
                        </td>
                    </tr>
                @endforeach
            @endif


        </tbody>
    </table>
    <div class="col-12 flex">
        <a class="btn btn-success" href="{{ route('checkout.index') }}" style="float:right;width:25%;margin-top:20px;">Proceed to
            Checkout</a>
        <h2 style="float:right;margin-right:10px">Total: {{ number_format($total) }} VNĐ</h2>

    </div>

</div>
