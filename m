X-GM-THRID: 6257896431456092160
X-Received: by 10.182.91.9 with SMTP id ca9mr4093054obb.7.1457054771871;
        Thu, 03 Mar 2016 17:26:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.19 with SMTP id y19ls71372iod.105.gmail; Thu, 03 Mar
 2016 17:26:11 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr4007594pab.38.1457054771372;
        Thu, 03 Mar 2016 17:26:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id y20si468913pfa.2.2016.03.03.17.26.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 17:26:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 4so25162148pfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 17:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=u+ujKI0rMSKte4IsZNZQDy3fYsO8eoOI29/VGmOuORE=;
        b=ccmuKP9MI5EPqcm68aVzzjE/WxEbaUvMkZAVTO2fheHAt+gA8qsL/VCVTckTRkPiun
         y+qZv5RMY1ao30lJDXHATHuIrQCUt8wudmtV8iBj8i0cKbBMOH62D8VuCIHtXNr3M+Gq
         wwoaAfbFAXseCW9IWkh2dtBQTrX+W7FFaYFxdLbqoiI2HFJexsFPdyi+hkGwF8FCv9qk
         9f8m+RMaY8jaRLhIji+CvEDy41Kki595/A4/YGwnrmXKU3hfl6ki5eWb2Yp0H+wy9Kw9
         T3SvLNchpMMrMYnBM/f7Cgkp+/GSeXL5F2FXoQAgTJqRx+f+j5MJjnD4s9+/08rC9Mly
         lNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=u+ujKI0rMSKte4IsZNZQDy3fYsO8eoOI29/VGmOuORE=;
        b=bvNEZ/KgThx+04pFKUIZY6hQvB7lSAQQm12Fs0InlCoYmCG0A0e+n3pkD0XLG7VL88
         WP1xAOslfr9pXKTGrnczQ9YE4PcZtJlFUKcF9oQQePrC81NY7B+3ZUQqXqxXb6R5xNNz
         zCqiD+DJhFl4LQ3vujhTYBMP96FcCnETjasCuepgd8M3GT+4lh3rAyFErntYRGa6GD67
         rygi74CSU1QcUUgrgmpyxHPzGuM9OTqJRdqJIGYq2wB+kcX7N/8+HVyPlDvS38sPz/DY
         dLE+BDm3359hvff9SCF7ktySU15020lU3KFlGzG1GG+gbms9NAcM23UojN/mSbe5vgnv
         /5rg==
X-Gm-Message-State: AD7BkJL2qIaXTAFOCl4sb8SodRljIDTt/9pyjNvY9uDZaKMzQObKkNW8NXElM7GawpxEbg==
X-Received: by 10.98.16.70 with SMTP id y67mr8193310pfi.166.1457054771197;
        Thu, 03 Mar 2016 17:26:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-68-68.dhcp.embarqhsd.net. [67.232.68.68])
        by smtp.gmail.com with ESMTPSA id 9sm915437pft.44.2016.03.03.17.26.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 17:26:10 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: fbtft: Do not use same argument more than once in bit operation.
Date: Thu,  3 Mar 2016 17:26:02 -0800
Message-Id: <1457054762-3682-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <alpine.DEB.2.02.1603032053480.2061@localhost6.localdomain6>
References: <alpine.DEB.2.02.1603032053480.2061@localhost6.localdomain6>

The reason may be that author is trying to
to explicitly reflect the register settings.

Considering this code...

static int init_display(struct fbtft_par *par)
{
.................snip........................

	/* Set temperature compensation */
        write_reg(par, 0x24 | (temp & 0x03));

        /* Set panel loading */
        write_reg(par, 0x28 | (load & 0x03));

        /* Set pump control */
        write_reg(par, 0x2C | (pump & 0x03));

        /* Set inverse display */
        write_reg(par, 0xA6 | (0x01 & 0x01));

        /* Set 4-bit grayscale mode */
        write_reg(par, 0xD0 | (0x02 & 0x03));

In the first 3 commands temp,load,pump are vars &'d with a mask.
In the last 2 commands 0x01 and 0x02 are hardcoded values &'d with a mask.
Sometimes that hardcoded value just happens to be the same as its mask.
I might even guess that this author knew it was redundant, but
that the compiler would reduce all of that for him anyway.

you can see the register definitions here if you want to get to
very bottom of this ;)
http://lcdhype.condense.de/index.php?act=Attach&type=post&id=6112&index=0

I wonder if it is better to define all those hardcode values for even
more clarity.


