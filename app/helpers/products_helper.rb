module ProductsHelper

    def convert_status_string product
        if product.status == 0
            "shipped"
        end
    end

end
