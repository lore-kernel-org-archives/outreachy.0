X-GM-THRID: 6398955300096835584
X-Received: by 10.157.9.138 with SMTP id q10mr10243932otd.21.1489936643765;
        Sun, 19 Mar 2017 08:17:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.111 with SMTP id 102ls2013996otv.42.gmail; Sun, 19 Mar
 2017 08:17:23 -0700 (PDT)
X-Received: by 10.157.3.14 with SMTP id 14mr6387786otv.100.1489936643337;
        Sun, 19 Mar 2017 08:17:23 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id g82si2155826pfb.5.2017.03.19.08.17.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 08:17:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 4A70B314;
	Sun, 19 Mar 2017 15:17:22 +0000 (UTC)
Date: Sun, 19 Mar 2017 09:17:20 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Alasdair Kergon <agk@redhat.com>,
 Mike Snitzer <snitzer@redhat.com>, dm-devel@redhat.com
Subject: Re: [PATCH] Documentation: device-mapper: cache.txt: Fix typos
Message-ID: <20170319091720.2b14281e@lwn.net>
In-Reply-To: <20170318213424.GA21394@sayli-HP-15-Notebook-PC>
References: <20170318213424.GA21394@sayli-HP-15-Notebook-PC>
Organization: LWN.net
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Sun, 19 Mar 2017 03:04:24 +0530
sayli karnik <karniksayli1995@gmail.com> wrote:

> The patch fixes a spelling error (hexidecimal->hexadecimal).

FYI, normal changelog style favors an imperative mood and avoiding terms
like "this patch".  So I changed the above to:

	Fix a spelling error (hexidecimal->hexadecimal)

With that, the patch is applied to the docs tree, thanks.

jon

