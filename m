X-GM-THRID: 6261499450444742656
X-Received: by 10.98.73.92 with SMTP id w89mr13531067pfa.11.1458595839898;
        Mon, 21 Mar 2016 14:30:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls1052725igr.4.gmail; Mon, 21 Mar
 2016 14:30:39 -0700 (PDT)
X-Received: by 10.107.19.70 with SMTP id b67mr24225573ioj.6.1458595839380;
        Mon, 21 Mar 2016 14:30:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si4094756pab.0.2016.03.21.14.30.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:30:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 99CAC74;
	Mon, 21 Mar 2016 21:30:38 +0000 (UTC)
Date: Mon, 21 Mar 2016 17:30:37 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: drivers: Fix lines over
 80 characters
Message-ID: <20160321213037.GA2978@kroah.com>
References: <cover.1457868804.git.anchalj109@gmail.com>
 <55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 05:07:50PM +0530, Anchal Jain wrote:
> Break lines so that they do not exceed 80
> characters. Problem found using checkpatch.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

You need to say which driver you are changing in your subject :(

