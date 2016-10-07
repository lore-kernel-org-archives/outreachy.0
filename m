X-GM-THRID: 6337857687216193536
X-Received: by 10.157.25.130 with SMTP id k2mr5215911otk.74.1475854873737;
        Fri, 07 Oct 2016 08:41:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.104 with SMTP id f101ls1952294iod.26.gmail; Fri, 07
 Oct 2016 08:41:07 -0700 (PDT)
X-Received: by 10.66.167.198 with SMTP id zq6mr4129224pab.96.1475854867873;
        Fri, 07 Oct 2016 08:41:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si5837106pab.2.2016.10.07.08.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 08:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0CA80725;
	Fri,  7 Oct 2016 15:41:06 +0000 (UTC)
Date: Fri, 7 Oct 2016 17:41:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: arve@android.com, riandrews@android.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] staging: android: ion: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <20161007154114.GA17791@kroah.com>
References: <20161005060424.GA5750@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161005060424.GA5750@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Oct 05, 2016 at 11:34:32AM +0530, Anchal Jain wrote:
> Use sizeof type *pointer instead of sizeof type.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> 	changes in v2-
> 		-modify the commit message
> 		-modify the patch 
>  drivers/staging/android/ion/ion.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Someone else already made this change before you did, sorry.

greg k-h

