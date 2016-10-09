X-GM-THRID: 6337544242768904192
X-Received: by 10.31.193.73 with SMTP id r70mr7656245vkf.40.1476024303103;
        Sun, 09 Oct 2016 07:45:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.1 with SMTP id w1ls2935727iow.4.gmail; Sun, 09 Oct 2016
 07:44:59 -0700 (PDT)
X-Received: by 10.107.1.80 with SMTP id 77mr3455289iob.100.1476024299725;
        Sun, 09 Oct 2016 07:44:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3730288pfw.0.2016.10.09.07.44.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 19AB125A;
	Sun,  9 Oct 2016 14:44:58 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:45:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: ks7010: Add blank line after variable
 declarations.
Message-ID: <20161009144506.GA6829@kroah.com>
References: <20161005204859.GA8628@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161005204859.GA8628@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Oct 05, 2016 at 05:48:59PM -0300, Elise Lennion wrote:
> Fix checkpatch WARNING: Missing a blank line after declarations.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 1 +
>  1 file changed, 1 insertion(+)

You need to say what changed in v2, otherwise we have no idea :(


