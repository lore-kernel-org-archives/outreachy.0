X-GM-THRID: 6208975538800820224
X-Received: by 10.129.82.193 with SMTP id g184mr1868464ywb.44.1445923888401;
        Mon, 26 Oct 2015 22:31:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.76 with SMTP id qo12ls1118217igb.10.canary; Mon, 26 Oct
 2015 22:31:28 -0700 (PDT)
X-Received: by 10.50.79.234 with SMTP id m10mr19245863igx.5.1445923888127;
        Mon, 26 Oct 2015 22:31:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si3912454pbb.0.2015.10.26.22.31.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:31:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 310D8486;
	Tue, 27 Oct 2015 05:31:27 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:31:22 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: dgnc: Removed parentheses.
Message-ID: <20151027053122.GA27646@kroah.com>
References: <1445719386-9684-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445719386-9684-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 24, 2015 at 11:43:06PM +0300, Burcin Akalin wrote:
> Removed unnecessary parentheses.Problem found using checkpatch.pl
> "CHECK: Unnecessary parentheses around brd->vpd[i + 3]"
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
> Changes since v2:
> * edit hash commit
> 
> Changes since v1:
> * & after not need space
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Doesn't apply to my tree :(

