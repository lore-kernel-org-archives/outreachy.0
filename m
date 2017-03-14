X-GM-THRID: 6397270990644051968
X-Received: by 10.129.161.132 with SMTP id y126mr17462284ywg.91.1489497764665;
        Tue, 14 Mar 2017 06:22:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls5296549ote.48.gmail; Tue, 14 Mar
 2017 06:22:44 -0700 (PDT)
X-Received: by 10.129.78.73 with SMTP id c70mr18189785ywb.152.1489497764286;
        Tue, 14 Mar 2017 06:22:44 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id y90si3643672pfa.6.2017.03.14.06.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 957A72E1;
	Tue, 14 Mar 2017 13:22:43 +0000 (UTC)
Date: Tue, 14 Mar 2017 07:22:42 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Tamara Diaconita <diaconitatamara@gmail.com>, linux-doc@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>, Tamara Diaconita
 <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Documentation: admin-guide: Fix
 typos
Message-ID: <20170314072242.790d56b9@lwn.net>
In-Reply-To: <CAEnQRZAGAeLFUY11=iyeNLaF+J6uXZVjFzfSjrEurqhmudT9Zg@mail.gmail.com>
References: <20170314083835.4317-1-diaconita.tamara@gmail.com>
	<CAEnQRZAGAeLFUY11=iyeNLaF+J6uXZVjFzfSjrEurqhmudT9Zg@mail.gmail.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Tue, 14 Mar 2017 15:06:40 +0200
Daniel Baluta <daniel.baluta@gmail.com> wrote:

> Also for easier reviewing next patches you can mention in the
> commit message what were the typos:
> 
> e.g: witdh -> width

I'm not sure that's helpful in a change like this which is fixing up a
lot of different mistakes - I have to read the text anyway :)

Anyway, this patch looks good, I've just applied it to the docs tree,
thanks.

jon

