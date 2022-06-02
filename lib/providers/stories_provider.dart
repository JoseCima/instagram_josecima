import 'package:instagram_josecima/models/stories_model.dart';

class StoriesProvider{

  List<Storie> stories = [];

  List<Storie> getStories(){

    stories = [
      new Storie(
        nombre: "Kory",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/603.jpg"
      ),
      new Storie(
        nombre: "Morgan",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/703.jpg"
      ),
      new Storie(
        nombre: "Maximilian",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/123.jpg"
      ),
      new Storie(
        nombre: "Cedrick",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/384.jpg"
      ),
      new Storie(
        nombre: "Irwin",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/402.jpg"
      ),
      new Storie(
        nombre: "Dane",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/118.jpg"
      ),
      new Storie(
        nombre: "Orlo",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/397.jpg"
      ),
      new Storie(
        nombre: "Sherwood",
        foto: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1004.jpg"
      ),

    ];
     return stories;
  }
}