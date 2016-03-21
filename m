X-GM-THRID: 6262247928978472960
X-Received: by 10.50.62.42 with SMTP id v10mr12405213igr.11.1458589337127;
        Mon, 21 Mar 2016 12:42:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.3 with SMTP id ei3ls1199491igc.24.canary; Mon, 21 Mar
 2016 12:42:16 -0700 (PDT)
X-Received: by 10.50.6.7 with SMTP id w7mr12452556igw.12.1458589336565;
        Mon, 21 Mar 2016 12:42:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4192552pac.1.2016.03.21.12.42.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D359C2C;
	Mon, 21 Mar 2016 19:42:15 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:42:14 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: nvec: Fixed NULL
 comparison style
Message-ID: <20160321194214.GC21554@kroah.com>
References: <cover.1458043063.git.anchalj109@gmail.com>
 <3305b7af88ac600ec38cb463aa6f01d8cc75849e.1458043064.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3305b7af88ac600ec38cb463aa6f01d8cc75849e.1458043064.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 05:34:25PM +0530, Anchal Jain wrote:
> Remove a CHECK produced by checkpatch.pl
> 
> CHECK: Comparison to NULL could be written "!msg"
> CHECK: Comparison to NULL could be written "!nvec->rx"
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

Someone sent this before you did :(

