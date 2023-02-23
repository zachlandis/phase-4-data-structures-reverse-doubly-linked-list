describe LinkedList do
  describe "#reverse!" do
    context "with an empty list" do
      let(:linked_list) { LinkedList.new }
      
      it "keeps the head as nil" do
        linked_list.reverse!
        expect(linked_list.tail).to eq(nil)
      end

      it "keeps the tail as nil" do
        linked_list.reverse!
        expect(linked_list.tail).to eq(nil)
      end
    end

    context "with one node in the list" do
      let(:node_1) { Node.new(1) }
  
      let(:linked_list) do 
        list = LinkedList.new
        list.head = node_1        # h1
        list.tail = node_1        # h1t
        list.length = 1
        list
      end

      it "keeps the head the same" do
        linked_list.reverse!
        expect(linked_list.head).to eq(node_1)
      end

      it "keeps the tail the same" do
        linked_list.reverse!
        expect(linked_list.tail).to eq(node_1)
      end

      it "does not update the node's prev_node or next_node attributes" do
        expect(node_1.prev_node).to eq(nil)
        expect(node_1.next_node).to eq(nil)
      end
    end

    context "with multiple nodes in the list" do
      let(:node_1) { Node.new(1) }
      let(:node_2) { Node.new(2) }
      let(:node_3) { Node.new(3) }
  
      # 1 <--> 2 <--> 3
      let(:linked_list) do 
        list = LinkedList.new
  
        list.head = node_1        # h1
        node_1.next_node = node_2 # h1 --> 2
        node_2.prev_node = node_1 # h1 <--> 2
        node_2.next_node = node_3 # h1 <--> 2 --> 3
        node_3.prev_node = node_2 # h1 <--> 2 <--> 3
        list.tail = node_3        # h1 <--> 2 <--> 3t
        list.length = 3
        list
      end
  
      it "updates the head of the list to be the old tail" do
        linked_list.reverse!
        # 3 <--> 2 <--> 1
  
        expect(linked_list.head).to eq(node_3)
      end
  
      it "updates the tail of the list to be the old head" do
        linked_list.reverse!
        # 3 <--> 2 <--> 1
  
        expect(linked_list.tail).to eq(node_1)
      end
  
      it "updates the prev_node and next_node attributes of each node" do
        linked_list.reverse!
        # 3 <--> 2 <--> 1
  
        expect(node_3.prev_node).to eq(nil)
        expect(node_3.next_node).to eq(node_2)
  
        expect(node_2.prev_node).to eq(node_3)
        expect(node_2.next_node).to eq(node_1)
  
        expect(node_1.prev_node).to eq(node_2)
        expect(node_1.next_node).to eq(nil)
      end
    end

  end
end
