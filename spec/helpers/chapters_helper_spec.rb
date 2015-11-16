require 'rails_helper'

describe ChaptersHelper do
  describe "#format_links" do
    it "extracts the directories and pages from a url from host" do
      link = "www.linkedin.com/groups/12345-ChapterName"
      extracted_link = extract_links(link, "linkedin.com")
      expect(extracted_link).to eq "groups/12345-ChapterName"
    end

    it "returns an empty string if link's host does not match given host" do
      link = "www.twitter.com/groups/12345-ChapterName"
      extracted_link = extract_links(link, "linkedin.com")
      expect(extracted_link).to eq ""
    end

    it "returns an empty string if it link matches the host exactly" do
      link = "www.linkedin.com"
      extracted_link = extract_links(link, "linkedin.com")
      expect(extracted_link).to eq ""
    end
  end
end
