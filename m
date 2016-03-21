X-GM-THRID: 6262247928978472960
X-Received: by 10.129.3.69 with SMTP id 66mr23984203ywd.41.1458589323310;
        Mon, 21 Mar 2016 12:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.56.113 with SMTP id z17ls1406750obp.26.gmail; Mon, 21 Mar
 2016 12:42:02 -0700 (PDT)
X-Received: by 10.182.16.199 with SMTP id i7mr25284390obd.44.1458589322669;
        Mon, 21 Mar 2016 12:42:02 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4192372pac.1.2016.03.21.12.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6783467;
	Mon, 21 Mar 2016 19:42:00 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:41:57 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: nvec: CHECK: No space is
 necessary after a cast
Message-ID: <20160321194157.GB21554@kroah.com>
References: <cover.1458043063.git.anchalj109@gmail.com>
 <4c16413d3738593c55bb5a11a4fcd4c6c86e59cf.1458043064.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c16413d3738593c55bb5a11a4fcd4c6c86e59cf.1458043064.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 05:33:02PM +0530, Anchal Jain wrote:
> Remove a CHECK produced by checkpatch.pl
> 
> CHECK: No space is necessary after a cast
> 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

Someone sent this before you did :(

