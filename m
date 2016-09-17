X-GM-THRID: 6331255217033576448
X-Received: by 10.36.208.8 with SMTP id m8mr1114688itg.25.1474147613231;
        Sat, 17 Sep 2016 14:26:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls2513493ioe.42.gmail; Sat, 17 Sep
 2016 14:26:52 -0700 (PDT)
X-Received: by 10.36.73.29 with SMTP id z29mr1118472ita.31.1474147612553;
        Sat, 17 Sep 2016 14:26:52 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si3636815pam.0.2016.09.17.14.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9B348D7;
	Sat, 17 Sep 2016 21:26:50 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:25:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: wlan-ng: use kernel preferred block
 commenting style
Message-ID: <20160917212543.GA5836@kroah.com>
References: <cover.1474119676.git.gs051095@gmail.com>
 <6b8722de3184861c05da59c3aad7cd6787079279.1474119677.git.gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b8722de3184861c05da59c3aad7cd6787079279.1474119677.git.gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 07:48:20PM +0530, Gargi Sharma wrote:
> Move the trailing markers to the next line to fix the checkpatch issue,
> trailing markers on the same line as the comment. Delete - in the multiline
> comments to follow the kernel coding style guide.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 276 ++++++++++++++++++--------------------
>  1 file changed, 129 insertions(+), 147 deletions(-)

This patch does not apply to my tree, can you rebase both of these and
resend?

thanks,

greg k-h

