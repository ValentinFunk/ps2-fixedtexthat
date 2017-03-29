ITEM.baseClass	= "base_texthat"
ITEM.text = "Cookies <3"

local CONFIG = {
    ItemPersistence = {
        price = 3600,
        pricePremium = 1780,
        name = "Cookies Hat",
        description = "A Texthat with a fixed text.",
        -- Remove /* */ to enable rank restriction
        /* ranks = {
            "admin", 
            "superadmin"
        }, */
    },
    color = Color(255, 0, 0), 
    outlineColor = Color(0, 255, 0),
    size = 0.25, -- Size scale
    -- Remove dashes to enable rainbow
    rainbow = false
}

function ITEM:initialize( id )
	KInventory.Items.base_pointshop_item.initialize( self, id )
    KInventory.Items.base_texthat.generateFromPersistence( ITEM, CONFIG )
end

function ITEM.static.GetPointshopDescriptionControl( )
	return "DPointshopItemDescription"
end
