local TexCoords = {}

function TexCoords.onHello()
    TexCoords.onSelect()
end

function TexCoords.calc(size, top, left, bottom, right)

    local magicNumber = (1 / size) / 2

    top = (top / size) + magicNumber
    left = (left / size) + magicNumber
    bottom = (bottom / size) - magicNumber
    right = (right / size) - magicNumber

    return 'texture:SetTexCoord('..left..', '..right..', '..top..', '..bottom..')'
end

function TexCoords.onSelect()
    io.write('Enter the BLP Size (only 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024) :')
    local size = io.read()

    io.write('Enter the Top Pixel Coords (Y parameters on Photoshop) :')
    local top = io.read()

    io.write('Enter the Left Pixel Coords (X parameters on Photoshop) :')
    local left = io.read()

    io.write('Enter the Bottom Pixel Coords (Y parameters on Photoshop) :')
    local bottom = io.read()

    io.write('Enter the Right Pixel Coords (X parameters on Photoshop) :')
    local right = io.read()

    io.write('\n\n'..TexCoords.calc(size, top, left, bottom, right)..'\n\n')
end

TexCoords.onHello()