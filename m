X-GM-THRID: 6397271096211537920
X-Received: by 10.157.59.230 with SMTP id k93mr17325174otc.3.1489497958569;
        Tue, 14 Mar 2017 06:25:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.10 with SMTP id u10ls4669954ioi.8.gmail; Tue, 14 Mar
 2017 06:25:57 -0700 (PDT)
X-Received: by 10.107.20.129 with SMTP id 123mr10012157iou.78.1489497957742;
        Tue, 14 Mar 2017 06:25:57 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01::f03c:91ff:fe2c:2b9f])
        by gmr-mx.google.com with ESMTPS id c123si3603527pfa.4.2017.03.14.06.25.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) client-ip=2600:3c01::f03c:91ff:fe2c:2b9f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 3383A2DF;
	Tue, 14 Mar 2017 13:25:57 +0000 (UTC)
Date: Tue, 14 Mar 2017 07:25:56 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: linux-doc@vger.kernel.org, outreachy-kernel@googlegroups.com, Tamara
 Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] Documentation: x86: Fix typos
Message-ID: <20170314072556.0f4b20f1@lwn.net>
In-Reply-To: <20170314083902.4491-1-diaconita.tamara@gmail.com>
References: <20170314083902.4491-1-diaconita.tamara@gmail.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Tue, 14 Mar 2017 10:39:02 +0200
Tamara Diaconita <diaconitatamara@gmail.com> wrote:

> -  If set to a nonzero value, contains a pointer to a NUL-terminated
> +  If set to a nonzero value, contains a pointer to a NULL-terminated

This one is actually correct as-is.  NUL is an ASCII character zero, as
one would find at the end of a string, while NULL is a pointer value.

Thanks,

jon

