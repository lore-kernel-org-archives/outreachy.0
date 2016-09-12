X-GM-THRID: 6329487812602101760
X-Received: by 10.157.20.41 with SMTP id h38mr16359878oth.48.1473700544571;
        Mon, 12 Sep 2016 10:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.78 with SMTP id i75ls3430180itf.19.canary; Mon, 12 Sep
 2016 10:15:41 -0700 (PDT)
X-Received: by 10.98.205.131 with SMTP id o125mr16566187pfg.12.1473700541729;
        Mon, 12 Sep 2016 10:15:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y124si2302431pfg.1.2016.09.12.10.15.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2CADB8D9;
	Mon, 12 Sep 2016 17:15:41 +0000 (UTC)
Date: Mon, 12 Sep 2016 19:03:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: gs0510 <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, wsa+renesas@sang-engineering.com
Subject: Re: [PATCH] Moved the trailing comment end quote to next line.
Message-ID: <20160912170350.GA26001@kroah.com>
References: <20160912164440.9174-1-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912164440.9174-1-gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 12, 2016 at 10:14:40PM +0530, gs0510 wrote:
> Checkpatch displays error that the comment endings should be in separate
> line, should not end in the same line as the comment.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

Your From: line should match your signed-off-by: line please.

Also, look at the subject, it doesn't say what part of the kernel is
being modified.  Please fix that up as well when you resend this.

thanks,

greg k-h

