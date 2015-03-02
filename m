X-GM-THRID: 4775794966528
X-Received: by 10.182.251.231 with SMTP id zn7mr25540060obc.24.1425256357413;
        Sun, 01 Mar 2015 16:32:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.67 with SMTP id c61ls1449408qge.52.gmail; Sun, 01 Mar
 2015 16:32:37 -0800 (PST)
X-Received: by 10.236.228.106 with SMTP id e100mr23551120yhq.21.1425256357209;
        Sun, 01 Mar 2015 16:32:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1303343pbc.1.2015.03.01.16.32.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:32:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DF2E4475;
	Mon,  2 Mar 2015 00:32:36 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:32:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Stagin: lustre: lustre: obdecho:
 Remove space after the name of that function
Message-ID: <20150302003236.GA1993@kroah.com>
References: <1425129364-22889-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425129364-22889-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 03:16:04PM +0200, Hatice ERT�RK wrote:
> Function names must be adjacent to the parenthesis opened after.That's why remove space after the name of that function.

Please properly wrap changelog lines at 72 columns.

thanks,

greg k-h

