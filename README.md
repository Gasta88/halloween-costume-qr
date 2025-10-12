# Halloween Costume QR - Full-Screen Spooky Surprise 🎃

A fun Halloween-themed website that displays random spooky GIFs in full-screen! Perfect for QR codes that lead to immersive Halloween experiences.

## 🎯 Purpose

This static website is designed to be deployed via GitHub Pages and accessed through a QR code. Each time someone visits the site, they'll see a random Halloween-themed GIF displayed in full-screen from a curated collection of spooky animations.

## 🚀 Features

- **Full-Screen GIF Display**: Shows Halloween GIFs directly on the site in full-screen mode
- **Interactive Controls**: Buttons for new surprises, fullscreen toggle, and sharing
- **Keyboard Shortcuts**: Space/Enter (new GIF), F (fullscreen), S (share)
- **Halloween Theme**: Spooky loading screen with pumpkin emoji and orange accents
- **Mobile Optimized**: Touch-friendly responsive design perfect for QR code scanning
- **Share Functionality**: Web Share API with clipboard fallback for easy sharing
- **Auto Deployment**: GitHub Actions automatically deploys changes to GitHub Pages

## 🔧 How It Works

1. User scans QR code or visits the website URL
2. Page displays a spooky loading screen for 1.5 seconds
3. JavaScript randomly selects one of the Halloween GIFs
4. GIF displays full-screen with interactive controls
5. Users can get new surprises, toggle fullscreen, or share the current GIF

## 🎭 GIF Collection

The site includes 25 carefully selected Halloween-themed GIFs featuring:
- Spooky animations
- Halloween characters
- Creepy and fun content
- High-quality Giphy URLs

## 📦 Deployment

### Automatic Deployment (Recommended)

The site uses GitHub Actions for automatic deployment:

1. **On Push to Main**: Automatically builds and deploys to GitHub Pages
2. **On Pull Request**: Builds the site for testing (doesn't deploy)
3. **Zero Configuration**: No manual deployment needed

### Setup Instructions

1. **Fork/Clone this repository**
2. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Select "GitHub Actions" as the source
   - The site will be available at `https://yourusername.github.io/repository-name`

3. **Make Changes**:
   - Edit `index.html` to modify the GIF list or styling
   - Push changes to the `main` branch
   - GitHub Actions will automatically deploy your changes

## 🛠️ Customization

### Adding More GIFs

Edit the `memes` array in `index.html`:

```javascript
const memes = [
    "https://your-new-gif-url.gif",
    // ... existing URLs
];
```

### Changing the Theme

Modify the CSS in the `<style>` section of `index.html`:
- Background colors
- Font styles
- Loading animation
- Emoji or text

### Adjusting Loading Screen Timing

Change the timeout value in the JavaScript:

```javascript
setTimeout(() => {
    const randomGif = getRandomGif();
    showGif(randomGif);
}, 1500); // Change 1500 to your desired milliseconds
```

### Adding Interactive Features

The site includes several interactive elements you can customize:
- **Button styles**: Modify the `.btn` CSS class
- **Keyboard shortcuts**: Edit the `keydown` event listener
- **Animation timing**: Adjust CSS animations and JavaScript timeouts

## 🔗 QR Code Usage

1. Generate a QR code pointing to your GitHub Pages URL
2. Print or display the QR code on Halloween decorations, costumes, or handouts
3. When people scan it, they'll get a surprise Halloween GIF!

## 📱 Mobile Optimization

The site is optimized for mobile devices:
- Responsive design
- Touch-friendly interface
- Fast loading on mobile networks
- Works great with QR code scanners

## 🔒 Security & Privacy

- No data collection or tracking
- No external dependencies (except the GIF hosting)
- Static site with no server-side processing
- Safe for all ages (curated content)

## 🤝 Contributing

Feel free to submit pull requests with:
- New Halloween GIF suggestions
- UI/UX improvements
- Bug fixes
- Feature enhancements

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🎃 Happy Halloween!

Enjoy spreading spooky surprises with your Halloween QR code!