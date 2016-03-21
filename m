X-GM-THRID: 6262249474194669568
X-Received: by 10.129.158.137 with SMTP id v131mr25647445ywg.9.1458589345135;
        Mon, 21 Mar 2016 12:42:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.127.177 with SMTP id nh17ls1064514igb.21.canary; Mon, 21
 Mar 2016 12:42:24 -0700 (PDT)
X-Received: by 10.50.136.232 with SMTP id qd8mr12514613igb.0.1458589344655;
        Mon, 21 Mar 2016 12:42:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4163662pfa.2.2016.03.21.12.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 24FC12C;
	Mon, 21 Mar 2016 19:42:24 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:42:22 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Remove a blank line
 before a  parenthesis '}'
Message-ID: <20160321194222.GD21554@kroah.com>
References: <20160315120552.GA3570@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315120552.GA3570@life-desktop>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 05:36:03PM +0530, Anchal Jain wrote:
> Blank lines aren't necessary before a close brace '}'
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

Someone sent this before you did :(

