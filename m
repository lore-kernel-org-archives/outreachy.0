X-GM-THRID: 6251897983822987264
X-Received: by 10.50.25.133 with SMTP id c5mr1161329igg.4.1455686334883;
        Tue, 16 Feb 2016 21:18:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.35 with SMTP id v35ls2015747ioi.34.gmail; Tue, 16 Feb
 2016 21:18:54 -0800 (PST)
X-Received: by 10.50.176.231 with SMTP id cl7mr1173399igc.0.1455686334615;
        Tue, 16 Feb 2016 21:18:54 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ui7si4431937pab.0.2016.02.16.21.18.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 21:18:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fl4so4760867pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 21:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=wbdfgzqbOr3qSzNRWqfm/dxziWVcUT6VClmYImhiLqM=;
        b=cQD2sxqINuqaO9u6CTgDeC7uEHwFMAXP/Yb1PbG9RzIwIeiNleK3VklESVAmUZ+RtE
         /mRIEoVvF2CwYFIVAZYZglxovoWRRBXaktTz4d4Jb+PTGZzGrcJUH24wfET4pHCae0TW
         Q6H9vWKaPCEwtV/0Gf2d+eA4OA0+LnwGG0QRbEIu3fJfRNJvIIH075ujQDznwQbdedNa
         Po5cjCYBVCb/xJ3W4EqvPkuKQX9ZlKYxvgDlazfhrQBx3ELb0Mx7kiRdorIxWXJzR+ZG
         coX5c/40FOolE/RsqyoSOBmRcegQIKgP5Yudn2lmFwXrNNib8/Es+Mt9uIFRcEuPGLFp
         OzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=wbdfgzqbOr3qSzNRWqfm/dxziWVcUT6VClmYImhiLqM=;
        b=Ol/Ynkx+XBiVWaLUlHYGjHXOFEkgIrYHJXTLdGrdl6w8Kl9I/raaJzRBXgGrzaQChY
         C7FWh16WvU92L/ERhZ6hGDfanPQ+H/WCBqoxGh9M4w3Kp6rUWvYi9RraKLfgBxWypOf4
         2DCwnhS/+2FynYhG/JfGJfQ57CT5iClHNqRtjalFdnMbP+9P56OCzWSzBpfnxGlhPq7h
         AsffGHC9pJS1s1BKQ0Tm34aT6lHi28Rfd+qzXHlI5b+3KtNDPqBRls70QdZjf+iEK6Qh
         wk/SSdmfOuT4vqYjVvomLzutiL8lzmSgX2ZFaMfa2RzT3UsX7n/9cuYgTsKCGYuC5tlP
         3a7g==
X-Gm-Message-State: AG10YOS//U5+xkzj1AXc91Ycqp+MfXbx22eagxqSifqKwULqHVouUFWARXEBi8j/HtsAFA==
X-Received: by 10.66.140.14 with SMTP id rc14mr36460369pab.65.1455686334485;
        Tue, 16 Feb 2016 21:18:54 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([14.195.236.245])
        by smtp.gmail.com with ESMTPSA id xz6sm49539980pab.42.2016.02.16.21.18.52
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 21:18:53 -0800 (PST)
Date: Wed, 17 Feb 2016 10:48:47 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: wlan-ng: Remove
 function hfa384x_drvr_getconfig_async
Message-ID: <20160217051847.GB4073@sudip-pc>
References: <cover.1455632723.git.bhumirks@gmail.com>
 <4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 16, 2016 at 08:06:59PM +0530, Bhumika Goyal wrote:
> The function hfa384x_drvr_getconfig_async is not used anywhere in the
> kernel so remove it. Also remove its prototype from the header file.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---

Just replied to your v1. Didn't see your v2 at that time. Quoting here also:
This patch introduces new build warning -
drivers/staging/wlan-ng/hfa384x_usb.c:839:13: warning: ‘hfa384x_cb_rrid’ defined but not used

regards
sudip

