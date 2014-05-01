require 'spec_helper'

module LeakStopper
  describe Scanner do
  
    describe "::scan_text" do
      it "it should find SSN in the sample page" do
        page_html = "123-123-1233"
        report = Scanner.scan_text page_html
        report.should_not be_nil
      end
    end

  end
end