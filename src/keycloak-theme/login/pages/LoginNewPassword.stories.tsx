import { Meta, StoryObj } from "@storybook/react";
import { createPageStory } from "../createPageStory";

const { PageStory } = createPageStory({
  pageId: "login-new-password.ftl",
});

const meta = {
  title: "login/loginNewPassword",
  component: PageStory,
} satisfies Meta<typeof PageStory>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Primary: Story = {
  render: () => <PageStory />,
};
