X-GM-THRID: 6342434702247329792
X-Received: by 10.36.115.194 with SMTP id y185mr2998276itb.24.1476715000613;
        Mon, 17 Oct 2016 07:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.72 with SMTP id o66ls519939ota.17.gmail; Mon, 17 Oct
 2016 07:36:40 -0700 (PDT)
X-Received: by 10.129.103.135 with SMTP id b129mr7335888ywc.14.1476715000158;
        Mon, 17 Oct 2016 07:36:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si5176062par.0.2016.10.17.07.36.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:36:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8CE5F959;
	Mon, 17 Oct 2016 14:36:39 +0000 (UTC)
Date: Mon, 17 Oct 2016 16:36:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Replace a name of
 a variable
Message-ID: <20161017143647.GA18273@kroah.com>
References: <20161017140550.GA4699@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161017140550.GA4699@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 17, 2016 at 05:05:50PM +0300, Mihaela Muraru wrote:
> This patch replace the name '*Error' variable with 'err'.

It also changes the type of one of them, which you don't mention doing
in the changelog, which isn't good :(


