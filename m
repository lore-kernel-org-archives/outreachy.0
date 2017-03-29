X-GM-THRID: 6402671850043736064
X-Received: by 10.107.21.195 with SMTP id 186mr988430iov.14.1490820721197;
        Wed, 29 Mar 2017 13:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls1221225oth.33.gmail; Wed, 29 Mar
 2017 13:52:00 -0700 (PDT)
X-Received: by 10.200.3.229 with SMTP id z37mr824469qtg.8.1490820720741;
        Wed, 29 Mar 2017 13:52:00 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01::f03c:91ff:fe2c:2b9f])
        by gmr-mx.google.com with ESMTPS id y90si9396pfa.6.2017.03.29.13.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 13:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) client-ip=2600:3c01::f03c:91ff:fe2c:2b9f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id CF4B92E0;
	Wed, 29 Mar 2017 20:51:59 +0000 (UTC)
Date: Wed, 29 Mar 2017 14:51:58 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Documentation: Add flexible-arrays.rst to the
 documentation tree
Message-ID: <20170329145158.47de30be@lwn.net>
In-Reply-To: <20170329203116.GA4861@sayli-HP-15-Notebook-PC>
References: <20170329203116.GA4861@sayli-HP-15-Notebook-PC>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Thu, 30 Mar 2017 02:01:16 +0530
sayli karnik <karniksayli1995@gmail.com> wrote:

> Add flexible-arrays.rst to Documentation/core-api. Add kernel-doc
> comments to allow referencing.

I've just applied this to the docs tree, thanks!

jon

