X-GM-THRID: 6206591728806264832
X-Received: by 10.129.83.10 with SMTP id h10mr4086194ywb.6.1445219880225;
        Sun, 18 Oct 2015 18:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls2378904qgp.24.gmail; Sun, 18 Oct
 2015 18:57:59 -0700 (PDT)
X-Received: by 10.31.21.194 with SMTP id 185mr23928864vkv.10.1445219879579;
        Sun, 18 Oct 2015 18:57:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si3186848pbb.2.2015.10.18.18.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 18:57:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 23E0167;
	Mon, 19 Oct 2015 01:57:59 +0000 (UTC)
Date: Sun, 18 Oct 2015 18:57:58 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: Remove
 unnecessary parentheses
Message-ID: <20151019015758.GA8496@kroah.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
 <1445084735-20133-2-git-send-email-aybuke.147@gmail.com>
 <1445084735-20133-3-git-send-email-aybuke.147@gmail.com>
 <CAEnQRZBQ3adxxn-trtEWRdqfDUycQvzhjA1i0A68Z81CgUiO0A@mail.gmail.com>
 <CAEnQRZAM89=q=i=T6a5B_uveiDTs4e2otaZpd0JQj+pbP6Q0qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZAM89=q=i=T6a5B_uveiDTs4e2otaZpd0JQj+pbP6Q0qw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 08:16:21PM +0300, Daniel Baluta wrote:
> On Sun, Oct 18, 2015 at 8:12 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> > On Sat, Oct 17, 2015 at 3:25 PM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
> >> Problem found using checkpatch.pl:
> >> CHECK: Unnecessary parentheses around pstrNetworkInfo->u8SsidLen
> >>
> >> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> >
> > Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
> 
> Ignore this, the patches are already applied.

Sorry, was too fast :)

