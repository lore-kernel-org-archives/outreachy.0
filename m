Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE73B7C
	for <outreachy@lists.linux.dev>; Sat,  2 Apr 2022 03:54:40 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1648871680; h=Content-Transfer-Encoding: MIME-Version:
 Content-Type: References: In-Reply-To: Date: Cc: To: To: From: From:
 Subject: Subject: Message-ID: Sender: Sender;
 bh=YLQb9h5A7nXCW01Oy06nUFUp66nD1ujEmjYEbKHcn88=; b=W2cUpD9LoN0PMa+YeaOqfqpqaQteH+9LcqvjuYZocB7Y5w3gIEhxr8aMuF2ZSagPGEODSknU
 wVnnKDhazfUq9QvDwYfmOfnwlP23yyLUtC1irUsI3oshVS01AuMMdc4/3ZpBIISbO89OBYMp
 eHXBAOi2N4Xmva+QNlPaMOupTlXmunmQAFLnoQnH61hn6m1xWZT7lMl+ukeaWn4GpPY/yxh/
 83HGcqTsnImyRCxZZPMU8T2pOMuxlC3GlCHHcGpbbRaJZkT3ZqWoz3aff5J8Gymhf8ryactF
 k+x/daUb8JKPs7IPoqjwCpN7/YhD2vMvxg3GHpYctSUw7edU/iy9oQ==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from [192.168.21.5] (dynamic-user.170.84.58.28.mhnet.com.br
 [170.84.58.28]) by smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 6247c8ffcb3e04acafd91cee (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Sat, 02 Apr 2022 03:54:39 GMT
Sender: codeagain@codeagain.dev
Message-ID: <1c7a7e6e77cff87e6ae268318bc71306ac68091d.camel@codeagain.dev>
Subject: Re: Testing Only - Ignore
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Date: Sat, 02 Apr 2022 00:54:36 -0300
In-Reply-To: <20220401221251.GA1188492@alison-desk>
References: <20220401221251.GA1188492@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2022-04-01 at 15:12 -0700, Alison Schofield wrote:
> This mailing list is very small (since it's so new), and friendly,
> so I'm spamming it with my private email test.
> 
> Not even sure this is a reasonable test.
> 
> Mail in which I am in the To: is not coming through to my Intel
> email.
> For example, Bruno's last email I see when I browse w Lore, but I 
> didn't get it in my @intel.com INBOX. 

I think what you saw might be caused by issues on my side. The last
two days I kept trying to fix the problem, but my mail provider is
having serious delivery issues. They use a SMTP re-routing service for
cases where delivery fails, but I have to request them case-by-case
after it happens. To don't risk fragmenting my patch submissions I
found an alternative SMTP service, but I failed to add it also to my
mail client, and that's likely the reason you didn't receive it.

> 
> It reminded me of something Stefano mentioned about mail getting
> de-dup'd and then you wind up with nothing.

If the e-mails get de-dup and my mail provider failed the delivery, my
best guess is that you won't receive it at all, since my post would be
the only one (my greatest fear in the last couple of days).

I hope it stops happening now!
