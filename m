X-GM-THRID: 6089206661120
X-Received: by 10.68.197.137 with SMTP id iu9mr3120357pbc.5.1425450388578;
        Tue, 03 Mar 2015 22:26:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.208 with SMTP id m199ls482163ioe.59.gmail; Tue, 03 Mar
 2015 22:26:28 -0800 (PST)
X-Received: by 10.66.140.66 with SMTP id re2mr3123705pab.29.1425450388251;
        Tue, 03 Mar 2015 22:26:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si410881pdc.0.2015.03.03.22.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:26:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.43.162])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AEC73990;
	Wed,  4 Mar 2015 06:26:27 +0000 (UTC)
Date: Tue, 3 Mar 2015 22:26:07 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Add
 space after ','
Message-ID: <20150304062607.GA27426@kroah.com>
References: <1425329638-18459-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425329638-18459-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 10:53:58PM +0200, Hatice ERT�RK wrote:
> Spaces required after that ',' .That's why add space after ','
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 78 +++++++++++-----------
>  1 file changed, 39 insertions(+), 39 deletions(-)

You sent a bunch of changes to this file, yet did not tell me which
order to apply the patches in.  So I guessed.  And got it wrong :(

Please resend all of these patches, in a series of patches, properly
numbered, so I know how to apply them.

thanks,

greg k-h

