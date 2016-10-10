X-GM-THRID: 6337544242768904192
X-Received: by 10.36.29.7 with SMTP id 7mr3085723itj.2.1476083302466;
        Mon, 10 Oct 2016 00:08:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls173329ota.0.gmail; Mon, 10 Oct
 2016 00:08:22 -0700 (PDT)
X-Received: by 10.157.25.130 with SMTP id k2mr8421702otk.74.1476083302089;
        Mon, 10 Oct 2016 00:08:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si8166853pac.1.2016.10.10.00.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 243852C;
	Mon, 10 Oct 2016 07:08:20 +0000 (UTC)
Date: Mon, 10 Oct 2016 09:08:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: ks7010: Add blank line after variable
 declarations.
Message-ID: <20161010070830.GA25767@kroah.com>
References: <20161010033333.GA4993@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010033333.GA4993@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 10, 2016 at 12:33:33AM -0300, Elise Lennion wrote:
> Fix checkpatch WARNING: Missing a blank line after declarations.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
> 
> v2: Fixed my name, was signing as Elise-Lennion before.
> 
>  drivers/staging/ks7010/ks7010_sdio.c | 1 +
>  1 file changed, 1 insertion(+)

This change is already in my tree :(

