# frozen_string_literal: true

describe 'Matcher output' do
  it { expect { puts 'Jaque' }.to output.to_stdout }
  it { expect { print 'Jaque' }.to output('Jaque').to_stdout }
  it { expect { print 'Jaque Assis' }.to output(/Jaque/).to_stdout }

  it { expect { warn 'Jaque' }.to output.to_stderr }
  it { expect { warn 'Jaque' }.to output("Jaque\n").to_stderr }
  it { expect { warn 'Jaque Assis' }.to output(/Jaque/).to_stderr }
end
