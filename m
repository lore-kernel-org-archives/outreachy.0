X-GM-THRID: 6210663897171492864
X-Received: by 10.107.164.233 with SMTP id d102mr39148444ioj.13.1446037845069;
        Wed, 28 Oct 2015 06:10:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.38 with SMTP id b35ls472278qgf.96.gmail; Wed, 28 Oct
 2015 06:10:44 -0700 (PDT)
X-Received: by 10.13.236.135 with SMTP id v129mr42896602ywe.9.1446037844454;
        Wed, 28 Oct 2015 06:10:44 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si4760391pbc.1.2015.10.28.06.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 06:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so7320250pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 06:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qNYqMjdIxEnMn8aAO5FHLmVDDWkqG92FNYSu6+zKh/w=;
        b=bHhRRIBOFo+hwreT+9vDmVCKnUtta/mlCyxXdM7Sdl++fISOLBXuU5QiebqKivnAgT
         0NUal2sRE+8jE2IkPfXF3McLN3Yv+AmYq5lYPkwQKon+t4MSMk/QhLiSOg0/Y3Gn6yKB
         YIWvLkT648ZrosVDe2Qr3BnbRjVuvFbo1c4iST9aNNelhb9WcanEui108orzwWPTnzI/
         VuwS46y/G8Intzd4Gz/US+qxpKReLCf0Km3DgfGU2dVvEHZAydo0yELCN9Yd/jiESRk6
         Pj3AlwCGLeIDjuOYfPMtnPRX+rKVheIs7cguuMt/ZvDKwdnNb+cGP36rx08FOR1/JQqU
         42XQ==
X-Received: by 10.67.8.101 with SMTP id dj5mr34134292pad.127.1446037844262;
        Wed, 28 Oct 2015 06:10:44 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.155.175])
        by smtp.gmail.com with ESMTPSA id ff2sm34985159pac.14.2015.10.28.06.10.42
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 06:10:43 -0700 (PDT)
Date: Wed, 28 Oct 2015 18:40:19 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
Message-ID: <20151028131019.GB16810@sudip-pc>
References: <cover.1446032441.git.shivanib134@gmail.com>
 <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 28, 2015 at 05:19:04PM +0530, Shivani Bhardwaj wrote:
> Replace calls to wrapper functions with the actual functions called by
> wrapper functions. Definitions needed to make those calls should also be added.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---

Not build tested. :(

error: implicit declaration of function ‘linux_sdio_set_speed’ [-Werror=implicit-function-declaration]
  nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);

drivers/staging/wilc1000/linux_wlan.c:990:41: warning: assignment makes pointer from integer without a cast [enabled by default]
  nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);

drivers/staging/wilc1000/linux_wlan.c:991:68: error: ‘sdio_default_speed’ undeclared (first use in this function)

regards
sudip

