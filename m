X-GM-THRID: 6339690897688494080
X-Received: by 10.129.135.195 with SMTP id x186mr8732758ywf.138.1476087580550;
        Mon, 10 Oct 2016 01:19:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls9731425otb.23.gmail; Mon, 10 Oct
 2016 01:19:40 -0700 (PDT)
X-Received: by 10.31.56.74 with SMTP id f71mr8557890vka.26.1476087580213;
        Mon, 10 Oct 2016 01:19:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si8246310pac.1.2016.10.10.01.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 564B1892;
	Mon, 10 Oct 2016 08:19:39 +0000 (UTC)
Date: Mon, 10 Oct 2016 10:19:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: lidza.louina@gmail.com, markh@compro.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: dgnc: replace DGNC_VERIFY_BOARD macro with
 dgnc_verify_board function.
Message-ID: <20161010081948.GA11548@kroah.com>
References: <20161010043825.GA5438@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010043825.GA5438@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 10, 2016 at 01:38:25AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Macros with flow control statements should be avoided
> 
> Macros with flow control statements should be avoided; they break the flow of the calling function and make it harder to test the code.

Please always wrap your changelog comments at 72 columns.

thanks,

greg k-h

