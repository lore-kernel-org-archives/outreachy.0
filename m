X-GM-THRID: 6261499450444742656
X-Received: by 10.66.244.225 with SMTP id xj1mr22005719pac.7.1458610777252;
        Mon, 21 Mar 2016 18:39:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls3645587qge.36.gmail; Mon, 21 Mar
 2016 18:39:36 -0700 (PDT)
X-Received: by 10.129.154.16 with SMTP id r16mr25555298ywg.39.1458610776594;
        Mon, 21 Mar 2016 18:39:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si4223064pab.0.2016.03.21.18.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 18:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 001A267;
	Tue, 22 Mar 2016 01:39:35 +0000 (UTC)
Date: Mon, 21 Mar 2016 21:39:34 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: drivers: Fix lines
 over 80 characters
Message-ID: <20160322013934.GA19556@kroah.com>
References: <cover.1457878893.git.anchalj109@gmail.com>
 <c8a83b1898463dafe6495d9dd227802018ef2a80.1457878893.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c8a83b1898463dafe6495d9dd227802018ef2a80.1457878893.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 08:01:39PM +0530, Anchal Jain wrote:
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

I can't take a patch without a changelog entry :(


