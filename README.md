# Halloween Costume QR - Random Redirect 🎃

A fun Halloween-themed website that randomly redirects visitors to spooky GIFs! Perfect for QR codes that lead to surprise Halloween content.

## 🎯 Purpose

This static website is designed to be deployed via GitHub Pages and accessed through a QR code. Each time someone visits the site, they'll be redirected to a random Halloween-themed GIF from a curated collection of spooky animations.

## 🚀 Features

- **Random Redirect**: Automatically redirects to one of 25 Halloween GIFs
- **Halloween Theme**: Spooky loading screen with pumpkin emoji
- **Mobile Friendly**: Responsive design that works great on phones (perfect for QR code scanning)
- **Fast Loading**: Minimal HTML with embedded CSS and JavaScript
- **Auto Deployment**: GitHub Actions automatically deploys changes to GitHub Pages

## 🔧 How It Works

1. User scans QR code or visits the website URL
2. Page displays a spooky loading screen for 1.5 seconds
3. JavaScript randomly selects one of the Halloween GIFs
4. User is automatically redirected to the selected GIF

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

### Adjusting Redirect Timing

Change the timeout value in the JavaScript:

```javascript
setTimeout(() => {
    window.location = memes[Math.floor(Math.random() * memes.length)];
}, 1500); // Change 1500 to your desired milliseconds
```

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