import 'package:instagram_josecima/models/post_model.dart';

class PostProvider{
  List<Post> posts = [];
  
  List<Post> getPosts(){
    posts = [
      new Post(
        userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/383.jpg', 
        userName: 'Ronaldo', 
        postPhoto: 'http://placeimg.com/640/480/fashion', 
        caption: 'Ad vero blanditiis exercitationem sint voluptatem rerum ut quia omnis. Sunt eum qui voluptas repellendus libero velit enim deserunt consequatur. Voluptatem quaerat laboriosam omnis ut autem. Ipsum ex ut earum nemo saepe sint. Aliquid vel non.', 
        date: 'Junio 02', 
        likes: 300, 
        topLikes: ['Diego', 'María Cima']),

        new Post(
        userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1243.jpg', 
        userName: 'Amber', 
        postPhoto: 'http://placeimg.com/640/480/technics', 
        caption: 'Ad vero blanditiis exercitationem sint voluptatem rerum ut quia omnis. Sunt eum qui voluptas repellendus libero velit enim deserunt consequatur. Voluptatem quaerat laboriosam omnis ut autem. Ipsum ex ut earum nemo saepe sint. Aliquid vel non.', 
        date: 'Junio 03', 
        likes: 988, 
        topLikes: ['Mari Tamay', 'Guille']),

        new Post(
        userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/695.jpg', 
        userName: 'Javon', 
        postPhoto: 'http://placeimg.com/640/480/food', 
        caption: 'Ad vero blanditiis exercitationem sint voluptatem rerum ut quia omnis. Sunt eum qui voluptas repellendus libero velit enim deserunt consequatur. Voluptatem quaerat laboriosam omnis ut autem. Ipsum ex ut earum nemo saepe sint. Aliquid vel non.', 
        date: 'Junio 04', 
        likes: 816, 
        topLikes: ['Emi', 'Carmi']),

        new Post(
        userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/816.jpg', 
        userName: 'Stephen', 
        postPhoto: 'http://placeimg.com/640/480/people', 
        caption: 'Ad vero blanditiis exercitationem sint voluptatem rerum ut quia omnis. Sunt eum qui voluptas repellendus libero velit enim deserunt consequatur. Voluptatem quaerat laboriosam omnis ut autem. Ipsum ex ut earum nemo saepe sint. Aliquid vel non.', 
        date: 'Junio 08', 
        likes: 523, 
        topLikes: ['Yaros', 'Can']),

        new Post(
        userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/510.jpg', 
        userName: 'Letitia', 
        postPhoto: 'http://placeimg.com/640/480/nightlife', 
        caption: 'Ad vero blanditiis exercitationem sint voluptatem rerum ut quia omnis. Sunt eum qui voluptas repellendus libero velit enim deserunt consequatur. Voluptatem quaerat laboriosam omnis ut autem. Ipsum ex ut earum nemo saepe sint. Aliquid vel non.', 
        date: 'Junio 10', 
        likes: 211, 
        topLikes: ['Tamay', 'Barzón']),
    ];

    return posts;
  }
  
  
  }