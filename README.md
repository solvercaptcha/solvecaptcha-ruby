![ruby](https://github.com/user-attachments/assets/64522815-dd7c-4bdf-8944-1904b83c8299)

<a href="https://github.com/solvercaptcha/solvecaptcha-python"><img src="https://github.com/user-attachments/assets/37e1d860-033b-4cf3-a158-468fc6b4debc" width="82" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-javascript"><img src="https://github.com/user-attachments/assets/4d3b4541-34b2-4ed2-a687-d694ce67e5a6" width="36" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-go"><img src="https://github.com/user-attachments/assets/ab22182e-6cb2-41fa-91f4-d5e89c6d7c6f" width="63" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-ruby"><img src="https://github.com/user-attachments/assets/1c3b6dc2-9acd-44fe-927d-31de3427639f" width="75" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-cpp"><img src="https://github.com/user-attachments/assets/36de8512-acfd-44fb-bb1f-b7c793a3f926" width="45" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-php"><img src="https://github.com/user-attachments/assets/e8797843-3f61-4fa9-a155-ab0b21fb3858" width="52" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-java"><img src="https://github.com/user-attachments/assets/a3d923f6-4fec-4c07-ac50-e20da6370911" width="50" height="30"></a>
<a href="https://github.com/solvercaptcha/solvecaptcha-csharp"><img src="https://github.com/user-attachments/assets/f4d449de-780b-49ed-bb0a-b70c82ec4b32" width="38" height="30"></a>

# 💎 Ruby captcha solver: Bypass reCAPTCHA, Cloudflare, hCaptcha, Amazon and more

Use the [Ruby captcha solver](https://solvecaptcha.com/captcha-solver/ruby-captcha-solver-bypass) to automatically bypass captchas like reCAPTCHA v2, v3, Invisible, Enterprise, hCaptcha, Cloudflare Turnstile, GeeTest, FunCaptcha, and Amazon WAF in any Ruby app.

## ✅ Supported captcha solvers

To get started quickly, check out the [Captcha Solver API](https://solvecaptcha.com/captcha-solver-api) documentation.

Helpful links:
- [reCAPTCHA v2 solver](https://solvecaptcha.com/captcha-solver/recaptcha-v2-solver-bypass)
- [reCAPTCHA v3 solver](https://solvecaptcha.com/captcha-solver/recaptcha-v3-solver-bypass)
- [hCaptcha solver](https://solvecaptcha.com/captcha-solver/hcaptcha-solver-bypass)
- [Text and image captcha solver](https://solvecaptcha.com/captcha-solver/image-captcha-solver-bypass)
- [Cloudflare captcha solver (Turnstile)](https://solvecaptcha.com/captcha-solver/cloudflare-captcha-solver-bypass)
- [Amazon captcha solver (AWS WAF)](https://solvecaptcha.com/captcha-solver/amazon-captcha-solver-bypass)
- [GeeTest solver](https://solvecaptcha.com/captcha-solver/slider-captcha-solver-bypass)
- [FunCaptcha (Arkose Labs) solver](https://solvecaptcha.com/captcha-solver/funcaptcha-solver-bypass)
- [Other types](https://solvecaptcha.com/)

### 🛠️ Features
- Fast and fully automated captcha solving
- Native support for **Go 1.18+**
- Uses standard `net/http` and JSON APIs — no external dependencies
- Easy integration with any Go backend, CLI tool, or scraper
- Supports async solving via goroutines and channels
- Pay only for successful solves
- 99.9% uptime
- 24/7 developer support

### 📦 Use cases 
- Accessibility automation
- Web scraping
- Automating form submissions in Go-powered services
- Running solvers in goroutines or background jobs
- QA pipelines and headless test automation
- Security testing and bot protection research

Need help integrating with your PHP application? [Open an issue](https://github.com/solvercaptcha/solvecaptcha-ruby/issues) or fork this repo to contribute.

- [💎 Ruby captcha solver: Bypass reCAPTCHA, Cloudflare, hCaptcha, Amazon and more](#-ruby-captcha-solver-bypass-recaptcha-cloudflare-hcaptcha-amazon-and-more)
    - [Installation](#installation)
    - [Configuration](#configuration)
        - [Client instance options](#client-instance-options)
    - [Solve captcha](#solve-captcha)
      - [Captcha options](#captcha-options)
      - [Normal Captcha](#normal-captcha)
      - [Text Captcha](#text-captcha)
      - [reCAPTCHA v2](#recaptcha-v2)
      - [reCAPTCHA v3](#recaptcha-v3)
      - [reCAPTCHA Enterprise](#recaptcha-enterprise)
      - [hCaptcha](#hcaptcha)
      - [FunCaptcha](#funcaptcha)
      - [GeeTest](#geetest)
      - [GeeTest V4](#geetest-v4)
      - [KeyCaptcha](#keycaptcha)
      - [Capy](#capy)
      - [Grid](#grid)
      - [Canvas](#canvas)
      - [ClickCaptcha](#clickcaptcha)
      - [Rotate](#rotate)
      - [Amazon WAF](#amazon-waf)
      - [Cloudflare Turnstile](#cloudflare-turnstile)
      - [Lemin Cropped Captcha](#lemin-cropped-captcha)
      - [Audio Captcha](#audio-captcha)
      - [Yandex](#yandex)
      - [CyberSiARA](#cybersiara)
      - [DataDome](#datadome)
      - [MTCaptcha](#mtcaptcha)
      - [Friendly captcha](#friendly-captcha)
      - [Cutcaptcha](#cutcaptcha)
      - [Tencent](#tencent)
      - [atbCAPTCHA](#atbcaptcha)
    - [Other methods](#other-methods)
      - [send / get_result](#send--get_result)
      - [balance](#balance)
      - [report](#report)
    - [Proxies](#proxies)
    - [Error handling](#error-handling)
    - [Examples](#examples)
- [Get in touch](#get-in-touch)
- [License](#license)


## Installation

Add this line to your Gemfile:

```ruby
gem 'solvecaptcha', git: 'https://github.com/solvercaptcha/solvecaptcha-ruby.git'
```

Then run:

```bash
bundle install
```

Or install it manually with:

```bash
gem install specific_install
gem specific_install https://github.com/solvercaptcha/solvecaptcha-ruby.git
```


## Installation
Add this line to your application's Gemfile:

```bash
gem 'ruby-solvecaptcha'
```

And then execute:

```bash
$ bundle
```
Or install it yourself as:

```bash
$ gem install ruby-solvecaptcha
```

## Configuration
To use the ApiSolveCaptcha gem, you'll need to import the module and create a Client instance. Here's an example:

```ruby
require_relative '../lib/api_solvecaptcha'

client =  ApiSolveCaptcha.new("YOUR_API_KEY")
```

There are a few options that can be configured using the Client instance:

```ruby
client.api_key = "YOUR_API_KEY"
```

### Client instance options

|Option          |Default value|Description                                                             |
|----------------|-------------|------------------------------------------------------------------------|
|default_timeout |120          |Timeout in seconds for all captcha types except reCAPTCHA. Defines how long the module tries to get the answer from `res.php` API endpoint|
|polling_interval|10           |Interval in seconds between requests to `res.php` API endpoint, setting values less than 5 seconds is not recommended|

To get the answer manually use [get_result method](#send--get_result)

## Solve captcha
When you submit any image-based captcha use can provide additional options to help solvecaptcha workers to solve it properly.

### Captcha options
| Option        | Default Value | Description                                                                                        |
| ------------- | ------------- | -------------------------------------------------------------------------------------------------- |
| numeric       | 0             | Defines if captcha contains numeric or other symbols [see more info in the API docs][normal_post] |
| min_len       | 0             | minimal answer lenght                                                                              |
| max_len       | 0             | maximum answer length                                                                              |
| phrase        | 0             | defines if the answer contains multiple words or not                                               |
| case_sensitive| 0             | defines if the answer is case sensitive                                                            |
| calc          | 0             | defines captcha requires calculation                                                               |
| lang          | -             | defines the captcha language, see the [list of supported languages]                                |
| hint_image    | -             | an image with hint shown to workers with the captcha, translated into instructionsimg API parameter                                               |
| hint_text     | -             | hint or task text shown to workers with the captcha                                                |

Below you can find basic examples for every captcha type, check out the code below.

### Normal Captcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_normal_captcha)</sup>

To bypass a normal captcha (distorted text on image) use the following method. This method also can be used to recognize any text on the image.
```ruby
result = client.normal({ image: 'path/to/captcha.jpg'})
# OR
result = client.normal({
  image: 'https://site-with-captcha.com/path/to/captcha.jpg'
})
```

### Text Captcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_text_captcha)</sup>

This method can be used to bypass a captcha that requires to answer a question provided in clear text.
```ruby
result = client.text({
  textcaptcha:'If tomorrow is Saturday, what day is today?',
  lang: "en"
})
```

### reCAPTCHA v2

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_recaptchav2_new)</sup>

Use this method to solve reCAPTCHA V2 and obtain a token to bypass the protection.
```ruby
result = client.recaptcha_v2({
  googlekey: '6Le-wvkSVVABCPBMRTvw0Q4Muexq1bi0DJwx_mJ-',
  pageurl: 'https://mysite.com/page/with/recaptcha_v2',
  invisible: 1
})
```

### reCAPTCHA v3

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_recaptchav3)</sup>

This method provides reCAPTCHA V3 solver and returns a token.
```ruby
result = client.recaptcha_v3({
  googlekey: '6Le-wvkSVVABCPBMRTvw0Q4Muexq1bi0DJwx_mJ-',
  pageurl: 'https://mysite.com/page/with/recaptcha_v3',
  version: 'v3',
  score: 0.3,
  action: 'verify'
})
```

### reCAPTCHA Enterprise

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_recaptcha_enterprise)</sup>

reCAPTCHA Enterprise can be used as reCAPTCHA V2 and reCAPTCHA V3. Below is a usage example for both versions.

```ruby
# reCAPTCHA V2
result = client.recaptcha_v2({
  googlekey: '6Le-wvkSVVABCPBMRTvw0Q4Muexq1bi0DJwx_mJ-',
  pageurl: 'https://mysite.com/page/with/recaptcha_v2_enterprise',
  enterprise: 1
})

# reCAPTCHA V3
result = client.recaptcha_v3({
  googlekey: '6Le-wvkSVVABCPBMRTvw0Q4Muexq1bi0DJwx_mJ-',
  pageurl: 'https://mysite.com/page/with/recaptcha_v3_enterprise',
  version: 'v3',
  score: 0.3,
  action: 'verify',
  enterprise: 1,
})
```

### hCaptcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_hcaptcha)</sup>

Use this method to solve hCaptcha and obtain a token to bypass the protection.

```ruby
result = client.hcaptcha({
  sitekey: 'SITEKEY',
  pageurl: 'https://example.com'
})
```

### FunCaptcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_funcaptcha_new)</sup>

FunCaptcha (Arkoselabs) solving method. Returns a token.

```ruby
result = client.funcaptcha({
   publickey: "69A21A01-CC7B-B9C6-0F9A-E7FA06677FFC",
   pageurl: "https://mysite.com/page/with/funcaptcha",
   surl: "https://client-api.arkoselabs.com"})
```

### GeeTest

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_geetest)</sup>

Method to solve GeeTest puzzle captcha. Returns a set of tokens as JSON.
```ruby
result = client.geetest({
  gt: 'f1ab2cdefa3456789012345b6c78d90e',
  api_server: 'api-na.geetest.com',
  challenge: '12345678abc90123d45678ef90123a456b',
  pageurl: 'https://www.site.com/page/'
})
```

### GeeTest v4

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_geetest_v4)</sup>

Use this method to solve GeeTest v4. Returns the response in JSON.
```ruby
result = client.geetest_v4({
  captcha_id: 'e392e1d7fd421dc63325744d5a2b9c73',
  pageurl: 'https://www.site.com/page/'
})
```

### KeyCaptcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_keycaptcha)</sup>

Token-based method to solve KeyCaptcha.
```ruby
result = client.keycaptcha({
  s_s_c_user_id: 10,
  s_s_c_session_id: '493e52c37c10c2bcdf4a00cbc9ccd1e8',
  s_s_c_web_server_sign: '9006dc725760858e4c0715b835472f22-pz-',
  s_s_c_web_server_sign2: '2ca3abe86d90c6142d5571db98af6714',
  pageurl: 'https://www.keycaptcha.ru/demo-magnetic/'
})
```

### Capy

Token-based method to bypass Capy puzzle captcha.
```ruby
result = client.capy({
  sitekey: 'PUZZLE_Abc1dEFghIJKLM2no34P56q7rStu8v',
  pageurl: 'http://mysite.com/',
  api_server: 'https://jp.api.capy.me/'
})
```

### Grid

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_grid)</sup>

Grid method is originally called Old reCAPTCHA V2 method. The method can be used to bypass any type of captcha where you can apply a grid on image and need to click specific grid boxes. Returns numbers of boxes.
```ruby
result = client.grid({
  image: 'path/to/captcha.jpg',
  recaptcharows: 3,
  recaptchacols: 3,
  previous_id: 0,
  lang: 'en',
  imginstructions: 'path/to/hint.jpg',
  textinstructions: 'Select all images with an Orange'
})
```

### Canvas

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#canvas)</sup>

Canvas method can be used when you need to draw a line around an object on image. Returns a set of points' coordinates to draw a polygon.
```ruby
result = client.canvas({
  image: 'path/to/captcha.jpg',
  previous_id: 0,
  lang: 'en',
  hint_image: 'path/to/hint.jpg',
  hint_text: 'Draw around apple'
})
```

### ClickCaptcha

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_rotatecaptcha)</sup>

ClickCaptcha method returns coordinates of points on captcha image. Can be used if you need to click on particular points on the image.
```ruby
result = client.coordinates({
  image: 'path/to/captcha.jpg',
  lang: 'en',
  hint_image: 'path/to/hint.jpg',
  hint_text: 'Connect the dots'
})
```

### Rotate

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_rotatecaptcha)</sup>

This method can be used to solve a captcha that asks to rotate an object. Mostly used to bypass FunCaptcha. Returns the rotation angle.
```ruby
result = client.rotate({
  image: 'path/to/captcha.jpg',
  angle: 40,
  lang: 'en',
  hint_image: 'path/to/hint.jpg',
  hint_text: 'Put the images in the correct way'
})
```

### Lemin Cropped Captcha

Use this method to solve Lemin challenge. Returns JSON with answer containing the following values: answer, challenge_id.
```ruby
result = client.lemin({
  captcha_id: 'CROPPED_1abcd2f_a1234b567c890d12ef3a456bc78d901d',
  div_id: 'lemin-cropped-captcha',
  pageurl: 'https://www.site.com/page/',
  api_server: "https://api.leminnow.com/"
})
```

### Cloudflare Turnstile

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#solving_cloudflare_turnstile)</sup>

Use this method to solve Cloudflare Turnstile. Returns JSON with the token and User-Agent.
```ruby
result = client.turnstile({
  sitekey: "0x0AAAAAAADnPIDROzbs0Aaj",
  data: "7fab0000b0e0ff00",
  pagedata: "3gAFo2...0ME1UVT0=",
  pageurl: "https://solvecaptcha.com/",
  action: "managed",
  userAgent: "Mozilla/5.0 ... Chrome/116.0.0.0 Safari/537.36",
  json: 1
})
```

### Amazon WAF

Use this method to solve Amazon WAF Captcha also known as AWS WAF Captcha is a part of Intelligent threat mitigation for Amazon AWS. Returns JSON with the token.

```ruby
result = client.amazon_waf({
  sitekey: '0x1AAAAAAAAkg0s2VIOD34y5',
  iv: 'CgAHbCe2GgAAAAAj',
  context: '9BUgmlm48F92WUoqv97a49ZuEJJ50TCk9MVr3C7WMtQ0X6flVbufM4n8mjFLmbLVAPgaQ1Jydeaja94iAS49ljb+sUNLoukWedAQZKrlY4RdbOOzvcFqmD/ZepQFS9N5w15Exr4VwnVq+HIxTsDJwRviElWCdzKDebN/mk8/eX2n7qJi5G3Riq0tdQw9+C4diFZU5E97RSeahejOAAJTDqduqW6uLw9NsjJBkDRBlRjxjn5CaMMo5pYOxYbGrM8Un1JH5DMOLeXbq1xWbC17YSEoM1cRFfTgOoc+VpCe36Ai9Kc=',
  pageurl: 'https://non-existent-example.execute-api.us-east-1.amazonaws.com/latest',
  challenge_script: "https://41bcdd4fb3cb.610cd090.us-east-1.token.awswaf.com/41bcdd4fb3cb/0d21de737ccb/cd77baa6c832/challenge.js",
  captcha_script: "https://41bcdd4fb3cb.610cd090.us-east-1.captcha.awswaf.com/41bcdd4fb3cb/0d21de737ccb/cd77baa6c832/captcha.js"
})
```

### Audio Captcha

Use the following method to bypass an audio captcha (mp3 formats only). 
You must provide the language as `lang = 'en'`. Supported languages are "en", "ru", "de", "el", "pt", "fr".
```ruby
result = client.audio({
  audio: 'path/to/audio.mp3',
  lang: "en"
})
```

### Yandex

Use this method to solve Yandex and obtain a token to bypass the protection.

```ruby
result = client.yandex({
  sitekey: 'Y5Lh0tiycconMJGsFd3EbbuNKSp1yaZESUOIHfeV',
  url: "https://rutube.ru"
})
```

### CyberSiARA

Use this method to solve CyberSiARA and obtain a token to bypass the protection.
```ruby
result = client.cyber_siara({
  pageurl: "https://test.com",
  master_url_id: "12333-3123123"
})
```

### DataDome

Use this method to solve DataDome and obtain a token to bypass the protection.

> [!IMPORTANT]
> To solve the DataDome captcha, you must use a proxy. It is recommended to use residential proxies.

```ruby
result = client.data_dome({
  pageurl: "https://test.com",
  captcha_url: "https://test.com/captcha/",
  proxytype: "http",
  proxy: "proxyuser:strongPassword@123.123.123.123:3128"
})
```

### MTCaptcha

Use this method to solve MTCaptcha and obtain a token to bypass the protection.
```ruby
result = client.mt_captcha({
  pageurl: "https://service.mtcaptcha.com/mtcv1/demo/index.html",
  sitekey: "MTPublic-DemoKey9M"
})
```

### Friendly captcha

Use this method to solve Friendly captcha and obtain a token to bypass the protection.

> [!IMPORTANT]
> To successfully use the received token, the captcha widget must not be loaded on the page. To do this, you need to abort request to `/friendlycaptcha/...module.min.js` on the page. When the captcha widget is already loaded on the page, there is a high probability that the received token will not work.

```ruby
result = client.friendly({
  pageurl: "https://example.com",
  sitekey: "2FZFEVS1FZCGQ9"
})
```

### Cutcaptcha

Use this method to solve Cutcaptcha and obtain a token to bypass the protection.
```ruby
result = client.cutcaptcha({
  misery_key: "a1488b66da00bf332a1488993a5443c79047e752",
  api_key: "SAb83IIB",
  pageurl: "https://example.cc/foo/bar.html"
})
```

### Tencent

Token-based method for automated solving of Tencent captcha.
```ruby
result = client.tencent({
  app_id: "197326679",
  pageurl: "https://mysite.com/page/with/tencent"
})
```

### atbCAPTCHA

Token-based method for automated solving of atbCAPTCHA.
```ruby
result = client.atb_captcha({
  app_id: "197326679",
  api_server: "api.atb_captcha.com",
  pageurl: "https://mysite.com/page/with/atb_captcha"
})
```

## Other methods

### send / get_result

These methods can be used for manual captcha submission and answer polling.
```ruby

# example for normal captcha
captcha_id = client.send('path/to/captcha.jpg')

# or for another captcha, for example for lemin
captcha_id = client.send({
  method:"lemin",
  captcha_id: "CROPPED_3dfdd5c_d1872b526b794d83ba3b365eb15a200b",
  api_server: "api.leminnow.com",
  div_id: "lemin-cropped-captcha",
  pageurl: "https://www.site.com/page/"
})

time.sleep(20)

# Get result
result = client.get_result(captcha_id)
```

### balance

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#additional)</sup>

Use this method to get your account's balance

```ruby
balance = client.get_balance
```

### report

<sup>[API method description.](https://solvecaptcha.com/captcha-solver-api#complain)</sup>

Use this method to report good or bad captcha answer.
```ruby
client.report(captcha_id, True) # captcha solved correctly
client.report(captcha_id, False) # captcha solved incorrectly
```
## Proxies

You can pass your proxy as an additional argument for methods: recaptcha, funcaptcha, geetest, geetest v4, keycaptcha, capy puzzle, lemin, turnstile, amazon waf, Cutcaptcha, Friendly captcha, MTCaptcha, DataDome, CyberSiARA and etc. The proxy will be forwarded to the API to solve the captcha.

Example solving reCAPTCHA V2 using proxy:
```ruby
result = client.recaptcha_v2({
  googlekey: '6Le-wvkSVVABCPBMRTvw0Q4Muexq1bi0DJwx_mJ-',
  pageurl: 'https://mysite.com/page/with/recaptcha_v2',
  invisible: 1,
  proxytype: "https",
  proxy: "proxyuser:strongPassword@123.123.123.123:3128"
})
```

## Error handling
In case of an error, the captcha solver throws an exception. It's important to properly handle these cases. We recommend using `begin rescue` to handle exceptions.
```ruby
  begin
  result = client.text('If tomorrow is Saturday, what day is today?')
  rescue ApiSolveCaptcha::ValidationException => e
    # invalid parameters passed
    puts(e)
  rescue ApiSolveCaptcha::NetworkException => e
    # network error occurred
    puts(e)
  rescue ApiSolveCaptcha::ApiException => e
    # api respond with error
    puts(e)
  rescue ApiSolveCaptcha::TimeoutException => e
    # captcha is not solved so far
    puts(e)
  end
```

## Examples

Examples of solving all supported captcha types are located in the [examples] directory.

## Get in touch

<a href="mailto:info@solvecaptcha.com"><img src="https://github.com/user-attachments/assets/539df209-7c85-4fa5-84b4-fc22ab93fac7" width="80" height="30"></a>
<a href="https://solvecaptcha.com/support/faq#create-ticket"><img src="https://github.com/user-attachments/assets/be044db5-2e67-46c6-8c81-04b78bd99650" width="81" height="30"></a>


## License

The code in this repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

<!-- Shared links -->
[SolveCaptcha]: https://solvecaptcha.com/
[normal_post]: https://solvecaptcha.com/captcha-solver-api#normal_post
[list of supported languages]: https://solvecaptcha.com/solvecaptcha-api#language
[examples]: ./examples/

