X-GM-THRID: 1543619215360
X-Received: by 10.68.132.99 with SMTP id ot3mr11232666pbb.6.1424467772989;
        Fri, 20 Feb 2015 13:29:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.101 with SMTP id m5ls263322ige.28.canary; Fri, 20 Feb
 2015 13:29:32 -0800 (PST)
X-Received: by 10.66.66.108 with SMTP id e12mr11477695pat.30.1424467772779;
        Fri, 20 Feb 2015 13:29:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x231.google.com (mail-qa0-x231.google.com. [2607:f8b0:400d:c00::231])
        by gmr-mx.google.com with ESMTPS id kt5si5711617qcb.3.2015.02.20.13.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:29:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) client-ip=2607:f8b0:400d:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f49.google.com with SMTP id w8so14313953qac.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=XuXg3SZj1Sniyo7cphi154RMdzs1GM7tnjmS5SayPdo=;
        b=isA/WyZ+XoewgJo2abXktzfL74sq2FDwWZXJZHvKl4TXOQxR0v+KW92qP2JYPXXL/i
         C4k+PbgwBiAN72jFX/lPAaoQBR02329z0QyuLQjpDDgS32EFzHiTMKMGdLWRDXLYxMh6
         e6IHJv9oQVUpyUr31L5uyMdqm9BdUdFMvQVBUWk5xtSHi5EgrSVm4nhBAA4H7agIMdxf
         rmkOg0Wu6WWMx3HcwwiXVHB4EhzF3PXlSdTa9BuutYNQUwOI5tEElSvSj99JN1eh628E
         CgaDUXQ8hlYQOU+NmI1F1fuLjtwKb6alzByn0WW7UP9bE/wdUI5X2C5kVpguh7bNTuq2
         oUjA==
X-Received: by 10.140.239.68 with SMTP id k65mr28564825qhc.76.1424467772590;
        Fri, 20 Feb 2015 13:29:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id w105sm22642205qgw.25.2015.02.20.13.29.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:29:32 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E7A73A.5050805@gmail.com>
Date: Fri, 20 Feb 2015 16:29:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: changed C99 // comments
References: <1424464080-7243-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424464080-7243-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 15:28, Hatice ERTÜRK wrote:
> // erased and replace it with /**/ used.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 532 ++++++++++++++++++++++----------------------
>  1 file changed, 266 insertions(+), 266 deletions(-)

Please see comments below.

Jes


> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 32ef993..25048b8 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -39,66 +39,66 @@
>  #include "rf.h"
>  #include "baseband.h"
>  
> -#define BY_AL2230_REG_LEN     23 //24bit
> +#define BY_AL2230_REG_LEN     23 /*24bit*/
>  #define CB_AL2230_INIT_SEQ    15
> -#define SWITCH_CHANNEL_DELAY_AL2230 200 //us
> +#define SWITCH_CHANNEL_DELAY_AL2230 200 /*us*/

Remember to leave a space between the /* and the first character

>  #define AL2230_PWR_IDX_LEN    64
>  
> -#define BY_AL7230_REG_LEN     23 //24bit
> +#define BY_AL7230_REG_LEN     23 /*24bit*/
>  #define CB_AL7230_INIT_SEQ    16
> -#define SWITCH_CHANNEL_DELAY_AL7230 200 //us
> +#define SWITCH_CHANNEL_DELAY_AL7230 200 /*us*/
>  #define AL7230_PWR_IDX_LEN    64
>  
>  static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
> -	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x01A00200+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x00FFF300+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x0005A400+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x0F4DC500+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x0805B600+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x0146C700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x00068800+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x0403B900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x00DBBA00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> -	0x00099B00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, //
> +	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x01A00200+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x00FFF300+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x0005A400+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x0F4DC500+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x0805B600+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x0146C700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x00068800+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x0403B900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x00DBBA00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
> +	0x00099B00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/

In this case, better to remove the comments than to add empty /**/

>  	0x0BDFFC00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x00000D00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x00580F00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW
>  };
>  
>  static const unsigned long dwAL2230ChannelTable0[CB_MAX_CHANNEL] = {
> -	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 1, Tf = 2412MHz
> -	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 2, Tf = 2417MHz
> -	0x03E79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 3, Tf = 2422MHz
> -	0x03E79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 4, Tf = 2427MHz
> -	0x03F7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 5, Tf = 2432MHz
> -	0x03F7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 6, Tf = 2437MHz
> -	0x03E7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 7, Tf = 2442MHz
> -	0x03E7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 8, Tf = 2447MHz
> -	0x03F7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 9, Tf = 2452MHz
> -	0x03F7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 10, Tf = 2457MHz
> -	0x03E7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 11, Tf = 2462MHz
> -	0x03E7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 12, Tf = 2467MHz
> -	0x03F7C000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 13, Tf = 2472MHz
> -	0x03E7C000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW  // channel = 14, Tf = 2412M
> +	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
> +	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
> +	0x03E79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
> +	0x03E79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 4, Tf = 2427MHz */
> +	0x03F7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 5, Tf = 2432MHz */
> +	0x03F7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 6, Tf = 2437MHz */
> +	0x03E7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 7, Tf = 2442MHz */
> +	0x03E7A000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 8, Tf = 2447MHz */
> +	0x03F7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 9, Tf = 2452MHz */
> +	0x03F7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
> +	0x03E7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
> +	0x03E7B000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
> +	0x03F7C000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
> +	0x03E7C000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
>  };
>  
>  static const unsigned long dwAL2230ChannelTable1[CB_MAX_CHANNEL] = {
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 1, Tf = 2412MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 2, Tf = 2417MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 3, Tf = 2422MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 4, Tf = 2427MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 5, Tf = 2432MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 6, Tf = 2437MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 7, Tf = 2442MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 8, Tf = 2447MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 9, Tf = 2452MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 10, Tf = 2457MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 11, Tf = 2462MHz
> -	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 12, Tf = 2467MHz
> -	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 13, Tf = 2472MHz
> -	0x06666100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW  // channel = 14, Tf = 2412M
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 4, Tf = 2427MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 5, Tf = 2432MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 6, Tf = 2437MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 7, Tf = 2442MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 8, Tf = 2447MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 9, Tf = 2452MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
> +	0x0B333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
> +	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
> +	0x06666100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
>  };
>  
>  static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {

This part is fine.

> @@ -168,240 +168,240 @@ static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
>  	0x0407F900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW
>  };
>  
> -// 40MHz reference frequency
> -// Need to Pull PLLON(PE3) low when writing channel registers through 3-wire.
> +/* 40MHz reference frequency */
> +/* Need to Pull PLLON(PE3) low when writing channel registers through 3-wire. */
>  static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
> -	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Channel1 // Need modify for 11a
> -	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Channel1 // Need modify for 11a
> -	0x841FF200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: 451FE2
> -	0x3FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: 5FDFA3
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // 11b/g    // Need modify for 11a
> -	// RoberYu:20050113, Rev0.47 Regsiter Setting Guide
> -	0x802B5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: 8D1B55
> +	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1*/ /* Need modify for 11a */
> +	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1 */ /* Need modify for 11a */
> +	0x841FF200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
> +	0x3FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 5FDFA3 */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11b/g */    /* Need modify for 11a */
> +	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */

Don't do two comments on one line - keep it all within one comment

> +	0x802B5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 8D1B55 */
>  	0x56AF3600+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: 860207
> +	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 860207 */
>  	0x6EBC0800+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x221BB900+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0xE0000A00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: E0600A
> -	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10)
> -	// RoberYu:20050113, Rev0.47 Regsiter Setting Guide
> -	0x000A3C00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11a: 00143C
> +	0xE0000A00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: E0600A */
> +	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
> +	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
> +	0x000A3C00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 00143C */
>  	0xFFFFFD00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x00000E00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0x1ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  // Need modify for 11a: 12BACF
> +	0x1ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  /* Need modify for 11a: 12BACF */
>  };
>  
>  static const unsigned long dwAL7230InitTableAMode[CB_AL7230_INIT_SEQ] = {
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Channel184 // Need modify for 11b/g
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Channel184 // Need modify for 11b/g
> -	0x451FE200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g
> -	0x5FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g
> -	0x67F78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // 11a    // Need modify for 11b/g
> -	0x853F5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g, RoberYu:20050113
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184 */ /* Need modify for 11b/g */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184 */ /* Need modify for 11b/g */
> +	0x451FE200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
> +	0x5FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
> +	0x67F78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11a */    /* Need modify for 11b/g */
> +	0x853F5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g, RoberYu:20050113 */
>  	0x56AF3600+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g
> +	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
>  	0x6EBC0800+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x221BB900+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0xE0600A00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g
> -	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10)
> -	0x00147C00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // Need modify for 11b/g
> +	0xE0600A00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
> +	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
> +	0x00147C00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
>  	0xFFFFFD00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
>  	0x00000E00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
> -	0x12BACF00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  // Need modify for 11b/g
> +	0x12BACF00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  /* Need modify for 11b/g */
>  };

Here again some lines have two comments

>  
>  static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
> -	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  1, Tf = 2412MHz
> -	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  2, Tf = 2417MHz
> -	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  3, Tf = 2422MHz
> -	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  4, Tf = 2427MHz
> -	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  5, Tf = 2432MHz
> -	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  6, Tf = 2437MHz
> -	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  7, Tf = 2442MHz
> -	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  8, Tf = 2447MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  9, Tf = 2452MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 10, Tf = 2457MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 11, Tf = 2462MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 12, Tf = 2467MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 13, Tf = 2472MHz //RobertYu: 20050218, update for APNode 0.49
> -	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 14, Tf = 2484MHz
> -
> -	// 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 183, Tf = 4915MHz (15)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 184, Tf = 4920MHz (16)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 185, Tf = 4925MHz (17)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 187, Tf = 4935MHz (18)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 188, Tf = 4940MHz (19)
> -	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 189, Tf = 4945MHz (20)
> -	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 192, Tf = 4960MHz (21)
> -	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 196, Tf = 4980MHz (22)
> -
> -	// 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
> -	// 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56)
> -
> -	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   7, Tf = 5035MHz (23)
> -	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   8, Tf = 5040MHz (24)
> -	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   9, Tf = 5045MHz (25)
> -	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  11, Tf = 5055MHz (26)
> -	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  12, Tf = 5060MHz (27)
> -	0x0FF55000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  16, Tf = 5080MHz (28)
> -	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  34, Tf = 5170MHz (29)
> -	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  36, Tf = 5180MHz (30)
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  38, Tf = 5190MHz (31) //RobertYu: 20050218, update for APNode 0.49
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  40, Tf = 5200MHz (32)
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  42, Tf = 5210MHz (33)
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  44, Tf = 5220MHz (34)
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  46, Tf = 5230MHz (35)
> -	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  48, Tf = 5240MHz (36)
> -	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  52, Tf = 5260MHz (37)
> -	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  56, Tf = 5280MHz (38)
> -	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  60, Tf = 5300MHz (39)
> -	0x0FF59000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  64, Tf = 5320MHz (40)
> -
> -	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 100, Tf = 5500MHz (41)
> -	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 104, Tf = 5520MHz (42)
> -	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 108, Tf = 5540MHz (43)
> -	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 112, Tf = 5560MHz (44)
> -	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 116, Tf = 5580MHz (45)
> -	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 120, Tf = 5600MHz (46)
> -	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 124, Tf = 5620MHz (47)
> -	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 128, Tf = 5640MHz (48)
> -	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 132, Tf = 5660MHz (49)
> -	0x0FF5F000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 136, Tf = 5680MHz (50)
> -	0x0FF5F000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 140, Tf = 5700MHz (51)
> -	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 149, Tf = 5745MHz (52)
> -	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 153, Tf = 5765MHz (53)
> -	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 157, Tf = 5785MHz (54)
> -	0x0FF61000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 161, Tf = 5805MHz (55)
> -	0x0FF61000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  // channel = 165, Tf = 5825MHz (56)
> +	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
> +	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
> +	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
> +	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
> +	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
> +	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
> +	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
> +	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */ /*RobertYu: 20050218, update for APNode 0.49 */
> +	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
> +	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
> +	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
> +	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
> +	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
> +	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
> +
> +	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
> +	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
> +	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
> +	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
> +
> +	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
> +	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
> +
> +	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
> +	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
> +	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
> +	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
> +	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
> +	0x0FF55000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
> +	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
> +	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */ /*RobertYu: 20050218, update for APNode 0.49*/

Here move the comment up on the line above - this makes for a much too
long line.

> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
> +	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
> +	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
> +	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
> +	0x0FF58000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
> +	0x0FF59000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
> +
> +	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
> +	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
> +	0x0FF5C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
> +	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
> +	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
> +	0x0FF5D000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
> +	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
> +	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
> +	0x0FF5E000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
> +	0x0FF5F000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
> +	0x0FF5F000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
> +	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52)*/
> +	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
> +	0x0FF60000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
> +	0x0FF61000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
> +	0x0FF61000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
>  };
>  
>  static const unsigned long dwAL7230ChannelTable1[CB_MAX_CHANNEL] = {
> -	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  1, Tf = 2412MHz
> -	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  2, Tf = 2417MHz
> -	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  3, Tf = 2422MHz
> -	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  4, Tf = 2427MHz
> -	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  5, Tf = 2432MHz
> -	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  6, Tf = 2437MHz
> -	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  7, Tf = 2442MHz
> -	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  8, Tf = 2447MHz
> -	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  9, Tf = 2452MHz
> -	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 10, Tf = 2457MHz
> -	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 11, Tf = 2462MHz
> -	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 12, Tf = 2467MHz
> -	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 13, Tf = 2472MHz
> -	0x06666100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 14, Tf = 2484MHz
> -
> -	// 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22)
> -	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 183, Tf = 4915MHz (15)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 184, Tf = 4920MHz (16)
> -	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 185, Tf = 4925MHz (17)
> -	0x08000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 187, Tf = 4935MHz (18)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 188, Tf = 4940MHz (19)
> -	0x0D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 189, Tf = 4945MHz (20)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 192, Tf = 4960MHz (21)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 196, Tf = 4980MHz (22)
> -
> -	// 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
> -	// 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56)
> -	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   7, Tf = 5035MHz (23)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   8, Tf = 5040MHz (24)
> -	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   9, Tf = 5045MHz (25)
> -	0x08000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  11, Tf = 5055MHz (26)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  12, Tf = 5060MHz (27)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  16, Tf = 5080MHz (28)
> -	0x05555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  34, Tf = 5170MHz (29)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  36, Tf = 5180MHz (30)
> -	0x10000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  38, Tf = 5190MHz (31)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  40, Tf = 5200MHz (32)
> -	0x1AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  42, Tf = 5210MHz (33)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  44, Tf = 5220MHz (34)
> -	0x05555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  46, Tf = 5230MHz (35)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  48, Tf = 5240MHz (36)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  52, Tf = 5260MHz (37)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  56, Tf = 5280MHz (38)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  60, Tf = 5300MHz (39)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  64, Tf = 5320MHz (40)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 100, Tf = 5500MHz (41)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 104, Tf = 5520MHz (42)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 108, Tf = 5540MHz (43)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 112, Tf = 5560MHz (44)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 116, Tf = 5580MHz (45)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 120, Tf = 5600MHz (46)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 124, Tf = 5620MHz (47)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 128, Tf = 5640MHz (48)
> -	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 132, Tf = 5660MHz (49)
> -	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 136, Tf = 5680MHz (50)
> -	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 140, Tf = 5700MHz (51)
> -	0x18000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 149, Tf = 5745MHz (52)
> -	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 153, Tf = 5765MHz (53)
> -	0x0D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 157, Tf = 5785MHz (54)
> -	0x18000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 161, Tf = 5805MHz (55)
> -	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  // channel = 165, Tf = 5825MHz (56)
> +	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
> +	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
> +	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
> +	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
> +	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
> +	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
> +	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
> +	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */
> +	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */
> +	0x1B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
> +	0x03333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
> +	0x0B333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
> +	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
> +	0x06666100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
> +
> +	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
> +	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
> +	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
> +	0x08000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
> +	0x0D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
> +
> +	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
> +	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
> +	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
> +	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
> +	0x08000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
> +	0x05555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
> +	0x10000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
> +	0x1AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
> +	0x05555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
> +	0x0AAAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
> +	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
> +	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
> +	0x18000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52) */
> +	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
> +	0x0D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
> +	0x18000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
> +	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
>  };
>  
>  static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  1, Tf = 2412MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  2, Tf = 2417MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  3, Tf = 2422MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  4, Tf = 2427MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  5, Tf = 2432MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  6, Tf = 2437MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  7, Tf = 2442MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  8, Tf = 2447MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  9, Tf = 2452MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 10, Tf = 2457MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 11, Tf = 2462MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 12, Tf = 2467MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 13, Tf = 2472MHz
> -	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 14, Tf = 2484MHz
> -
> -	// 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 183, Tf = 4915MHz (15)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 184, Tf = 4920MHz (16)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 185, Tf = 4925MHz (17)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 187, Tf = 4935MHz (18)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 188, Tf = 4940MHz (19)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 189, Tf = 4945MHz (20)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 192, Tf = 4960MHz (21)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 196, Tf = 4980MHz (22)
> -
> -	// 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
> -	// 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   7, Tf = 5035MHz (23)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   8, Tf = 5040MHz (24)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =   9, Tf = 5045MHz (25)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  11, Tf = 5055MHz (26)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  12, Tf = 5060MHz (27)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  16, Tf = 5080MHz (28)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  34, Tf = 5170MHz (29)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  36, Tf = 5180MHz (30)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  38, Tf = 5190MHz (31)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  40, Tf = 5200MHz (32)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  42, Tf = 5210MHz (33)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  44, Tf = 5220MHz (34)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  46, Tf = 5230MHz (35)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  48, Tf = 5240MHz (36)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  52, Tf = 5260MHz (37)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  56, Tf = 5280MHz (38)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  60, Tf = 5300MHz (39)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel =  64, Tf = 5320MHz (40)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 100, Tf = 5500MHz (41)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 104, Tf = 5520MHz (42)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 108, Tf = 5540MHz (43)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 112, Tf = 5560MHz (44)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 116, Tf = 5580MHz (45)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 120, Tf = 5600MHz (46)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 124, Tf = 5620MHz (47)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 128, Tf = 5640MHz (48)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 132, Tf = 5660MHz (49)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 136, Tf = 5680MHz (50)
> -	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 140, Tf = 5700MHz (51)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 149, Tf = 5745MHz (52)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 153, Tf = 5765MHz (53)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 157, Tf = 5785MHz (54)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, // channel = 161, Tf = 5805MHz (55)
> -	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  // channel = 165, Tf = 5825MHz (56)
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
> +	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
> +
> +	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
> +
> +	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
> +	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
> +	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
> +	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
>  };
>  
>  /*
> @@ -438,13 +438,13 @@ static bool s_bAL7230Init(struct vnt_private *priv)
>  	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
>  
>  	/* Calibration */
> -	MACvTimer0MicroSDelay(dwIoBase, 150);//150us
> +	MACvTimer0MicroSDelay(dwIoBase, 150);/*150us*/
>  	/* TXDCOC:active, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);//30us
> +	MACvTimer0MicroSDelay(dwIoBase, 30);/*30us*/
>  	/* TXDCOC:disable, RCK:active */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);//30us
> +	MACvTimer0MicroSDelay(dwIoBase, 30);/*30us*/
>  	/* TXDCOC:disable, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
>  

Add a space between the ; and the /*

> @@ -457,7 +457,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
>  
>  	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
>  	/* 3-wire control for power saving mode */
> -	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); //1100 0000
> +	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /*1100 0000*/
>  
>  	return bResult;
>  }
> @@ -557,16 +557,16 @@ static bool RFbAL2230Init(struct vnt_private *priv)
>  
>  	for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
>  		bResult &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[ii]);
> -	MACvTimer0MicroSDelay(dwIoBase, 30); //delay 30 us
> +	MACvTimer0MicroSDelay(dwIoBase, 30); /*delay 30 us*/
>  
>  	/* PLL On */
>  	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
>  
> -	MACvTimer0MicroSDelay(dwIoBase, 150);//150us
> +	MACvTimer0MicroSDelay(dwIoBase, 150);/* 150us */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x00d80f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);//30us
> +	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x00780f00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);//30us
> +	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
>  	bResult &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);
>  
>  	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
> @@ -575,7 +575,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
>  							 SOFTPWRCTL_TXPEINV));
>  
>  	/* 3-wire control for power saving mode */
> -	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); //1100 0000
> +	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
>  
>  	return bResult;
>  }
> @@ -660,11 +660,11 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, unsigned
>  	case RF_AL2230S:
>  		bResult = RFbAL2230SelectChannel(priv, byChannel);
>  		break;
> -		//{{ RobertYu: 20050104
> +		/*{{ RobertYu: 20050104*/
>  	case RF_AIROHA7230:
>  		bResult = s_bAL7230SelectChannel(priv, byChannel);
>  		break;
> -		//}} RobertYu
> +		/*}} RobertYu*/
>  	case RF_NOTHING:
>  		bResult = true;
>  		break;
> 


