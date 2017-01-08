require 'airport'


describe Airport do
  it 'instructs plane to land' do
    allow(subject).to receive(:stormy?).and_return false
    expect(subject).to respond_to(:land).with(1).argument

  end
  it 'instructs plane to take off' do
    expect(subject).to respond_to(:take_off).with(1).argument

  end

  it 'instructs plane not to take off when weather is stormy' do
    plane =Plane.new
    allow(subject).to receive(:stormy?).and_return true
  expect { subject.take_off(plane) }.to raise_error 'Cannot take off: weather is stormy'
  end

    it 'instructs plane not to land when weather is stormy' do
      plane =Plane.new
    allow(subject).to receive(:stormy?).and_return true
    expect { subject.land(plane) }.to raise_error 'Cannot land: weather is stormy'
  end

end
