X-GM-THRID: 6335769509399363584
X-Received: by 10.129.23.212 with SMTP id 203mr3996480ywx.123.1475424607721;
        Sun, 02 Oct 2016 09:10:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls9155067ots.13.gmail; Sun, 02 Oct
 2016 09:10:07 -0700 (PDT)
X-Received: by 10.129.119.70 with SMTP id s67mr4585360ywc.102.1475424607370;
        Sun, 02 Oct 2016 09:10:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o72si2709339vkc.0.2016.10.02.09.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 09:10:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B99398DC;
	Sun,  2 Oct 2016 16:10:05 +0000 (UTC)
Date: Sun, 2 Oct 2016 18:10:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: Re: [PATCH v4 1/2] staging: iio: cdc: ad7152: Add blank line after
 declarations to increase readability
Message-ID: <20161002161006.GB22039@kroah.com>
References: <20161002155007.GA4395@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002155007.GA4395@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 09:20:14PM +0530, Anchal Jain wrote:
> Add a blank line after a function declaration because local variable
> declarations should be seprated from the function's statments by a blank line
> to increase the readability of a code.

None of your patch had anything to do with local variables :(

