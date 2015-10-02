X-GM-THRID: 6200732724667351040
X-Received: by 10.182.213.73 with SMTP id nq9mr12450746obc.33.1443777662224;
        Fri, 02 Oct 2015 02:21:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.96.70 with SMTP id dq6ls666306obb.51.gmail; Fri, 02 Oct
 2015 02:21:01 -0700 (PDT)
X-Received: by 10.182.107.162 with SMTP id hd2mr12478947obb.29.1443777661718;
        Fri, 02 Oct 2015 02:21:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o73si1063657ywd.6.2015.10.02.02.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 02:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1BE4C1D51;
	Fri,  2 Oct 2015 09:20:59 +0000 (UTC)
Date: Fri, 2 Oct 2015 11:20:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] Staging: lustre: ptlrpc:
 Declare sptlrpc_rule_set_merge as static
Message-ID: <20151002092057.GA10080@kroah.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
 <1443773747-2985-2-git-send-email-shraddha.6596@gmail.com>
 <CAK-LDbKTvK=vqNnQaCHcpwMg8fODzoTy1QZZ42dxX1Bvy-Q=nA@mail.gmail.com>
 <alpine.DEB.2.11.1510021424120.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1510021424120.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 02, 2015 at 02:25:55PM +0530, Shraddha Barke wrote:
> 
> 
> On Fri, 2 Oct 2015, Vaishali Thakkar wrote:
> 
> >On Fri, Oct 2, 2015 at 1:45 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> >>Declare sptlrpc_rule_set_merge as static since it is accessed from this
> >>particular file only. Also remove its declaration from
> >>header file
> >>
> >>Changes in v2-
> >> No change
> >
> >Hi,
> >
> >You need to write 'Changes in v2' part under --- . So that when the patch will
> >be applied, part under --- will go away.
> 
> Shoot. Will I have to send v3 ? Or just that one patch again?

Please send a whole new series, that's much easier for me to handle than
individual patch versions.

thanks,

greg k-h

