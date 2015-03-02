X-GM-THRID: 5586368331776
X-Received: by 10.50.92.10 with SMTP id ci10mr14537396igb.8.1425257816203;
        Sun, 01 Mar 2015 16:56:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.124.193 with SMTP id mk1ls799397igb.1.canary; Sun, 01 Mar
 2015 16:56:56 -0800 (PST)
X-Received: by 10.42.62.67 with SMTP id x3mr25107076ich.4.1425257816058;
        Sun, 01 Mar 2015 16:56:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si24855pac.2.2015.03.01.16.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:56:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C24A34D3;
	Mon,  2 Mar 2015 00:56:55 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:56:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: Replace
 __printf(string-index, first-to-check) with __attribute__((format(printf,
 string-index, first-to-check)))
Message-ID: <20150302005655.GA7846@kroah.com>
References: <1425244055-11203-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425244055-11203-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 11:07:35PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
> 
> Changes in v2:
>    Changed subject line

You obviously did not even compile this patch, why not?  It's a bit rude
to break the build :(

Please be more careful.

