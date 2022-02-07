-- ============================================================= --
-- Free Fences
-- Curato Farms
-- V1.0.0.1
-- ============================================================= --



function ConstructionBrushFence:getPrice(length)


 if self.storeItem.name == 'Grapevine' or self.storeItem.name == 'Olive grove' then
        freeFencesprice = self.storeItem.price
    else
        freeFencesprice = 0
end

	local price = nil
	
	


		if self.gateIndex ~= nil and self.name ~= Grapevine then
			price = freeFencesprice
	else
		if length == nil then
			length = self.fence:getSegmentLength(self.fence:getPreviewSegment())
		end

		price = length * freeFencesprice
	end

	return price
end

function PlaceableFenceAddSegmentEvent.new(fence, x1, z1, x2, z2, renderFirst, renderLast, gateIndex, price)
	local self = PlaceableFenceAddSegmentEvent.emptyNew()
	self.fence = fence
	self.x1 = x1
	self.z1 = z1
	self.x2 = x2
	self.z2 = z2
	self.renderFirst = renderFirst
	self.renderLast = renderLast
	self.gateIndex = gateIndex
	self.price = 0

	return self
end