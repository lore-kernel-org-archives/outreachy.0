X-GM-THRID: 7888814735360
X-Received: by 10.66.124.198 with SMTP id mk6mr56016255pab.22.1426416434515;
        Sun, 15 Mar 2015 03:47:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.20 with SMTP id h20ls1587804ioe.34.gmail; Sun, 15 Mar
 2015 03:47:14 -0700 (PDT)
X-Received: by 10.66.102.100 with SMTP id fn4mr58335877pab.19.1426416434313;
        Sun, 15 Mar 2015 03:47:14 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1250868pdb.2.2015.03.15.03.47.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:47:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 89AAF13;
	Sun, 15 Mar 2015 10:47:13 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:47:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Fix code style issues
Message-ID: <20150315104710.GD543@kroah.com>
References: <20150312143226.GA26267@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312143226.GA26267@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 08:02:26PM +0530, Vatika Harlalka wrote:
> Reduce line size to increase readability and 
> remove unnecessary brackets.

Again, your subject: needs work...

