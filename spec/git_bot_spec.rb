
    require('rspec')
    require('git_bot')

    describe(GitBot) do
    describe('#looper') do
      it('test') do
        test = GitBot.new()
        expect(test.looper()).to(eq('test'))
      end
    end
  end
  