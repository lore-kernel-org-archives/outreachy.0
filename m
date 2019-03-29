X-GM-THRID: 6673447635063406592
X-Received: by 2002:a6b:8f01:: with SMTP id r1mr5506723iod.27.1553876412390;
        Fri, 29 Mar 2019 09:20:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls833974ita.2.gmail; Fri, 29 Mar
 2019 09:20:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcyOS56rU6E7j95yYhoJfuXfT2W/QagNQLG7t0hbQmj/QZtmJuI6gPqWDOlB7m08n5u021
X-Received: by 2002:a24:395:: with SMTP id e143mr1884818ite.10.1553876411421;
        Fri, 29 Mar 2019 09:20:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876411; cv=none;
        d=google.com; s=arc-20160816;
        b=TUnxZjj2BpoWNoqAFjXKkEjiFYMUh/YX4SE1YXhc/9cOyC9h++CLjuM4AG2CeTqJ5/
         G1sJ9pNHxBtLfvw91lyQ0Wukh1MmYqO88psErJ2YNPZ6y+YKtRB360DwcfIv90jWBYiL
         qmNN0hFCQO/xeowxbuneCizB313E4KeawNNS7lwmalDGzdYhbIFwpnReFS2dQ3t61ZNr
         UDt9197r1P2X+UDn6ouZ3RGfJaeSZwRTJm/Z0PgwsGySRC+V9k0nLet+/dwJ2qLTmRqN
         NYPLrq5ss4eE/ZYjUVeUBUi1gM8eOrTqtiByWpPePE8kvRkZeuf6+b52jS5cg851CsHW
         ww6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=7MlYgxMiOPHGl7Hqm+hYjCmWPBYKyQ2KJqbjg8OQuag=;
        b=u6k9uWnSDfBIRoYy9ROK3Js9N+//86LG4OaL6d4J4OAtuWmEsZGFrNSJnZBydLFh0P
         baeTXnocBe1hyZRZt2WHOxplNmqaeUAUX7Jovn/g/bhJUjlRm3axAQafJ+mYFGYIam0+
         DQssTQj9Of/ZSU76exhfo++V5v5e8OcPnwxO0bMg+pPC2PVYbN6CX+ae3JKxAKe/UJdq
         uDPo8FRYF5LEcG9BotR6HltsXqE8ZiyjPBBNPFdOx894/PreC3qeiqedDr8x/rd9U7u5
         TkKPVMi4vHHvuf55lYJ7kTOwVIpOqcqEYEFcnkIoChjxl1J7v/aPzgvgExjI3E/qdFWB
         jbzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=PrkYrmCS;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="Omwt/KQi";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id r17si735519itb.4.2019.03.29.09.20.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:20:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=PrkYrmCS;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="Omwt/KQi";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id BFC4922077;
	Fri, 29 Mar 2019 12:20:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 12:20:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=7MlYgxMiOPHGl7Hqm+hYjCmWPBY
	KyQ2KJqbjg8OQuag=; b=PrkYrmCSNbdqn5f6xSuoYnEuiGGGHpG5Goy/dUIwDId
	pYyfltsW9iBdeobBJ+BZy866xfDTUuA/I3PYuel7nKVX3R63pUWBW0+8nRCFXHMZ
	AeAYJVWwqvyHFxFjLVZaq/Vgj43WkDJi6Defi7GSdOqCw+uDDHuxLwbaucy8XJ5m
	ZB0AHnppSMkEoiKhzV2GY0h0Cm3CmRRJY1Mt4dFyI+Ug6taLv+YKg4yqqIPmsIpk
	lYtB1jgr9PfLtwJvwdAr75l8K8hNYqWyBovMT0jjRc9/SkHa5F1cOMrNZEsxw0JK
	3nn3z5WcPIkXgkmv5MGVXpCkwoGTuiXLeoY9rX1V3fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7MlYgx
	MiOPHGl7Hqm+hYjCmWPBYKyQ2KJqbjg8OQuag=; b=Omwt/KQigGXNA7sb1e0NXc
	W+piWH0DMveEla9Naa4+JNvcEvFhPo1LkJ7aDd9rIPBrSjMitoo5Bn0u8n15pL0b
	uYSQQNwHxeXN7BaXc9EVjsy2ZJFUMomp0zWgyUlfvLgM0b4h8K8hZdzBhfhlBhaH
	Vxlbjxlwe/Vma3UTV0bsEfsnQw+08rdRoJl9MRiXjA9eNDGYfCTW7nlRt4AOnoGT
	6zlG0h2mFb+b0wOMySezSXgR44IVLK6uksQg+efdqb7HPYecnwXqIKKU0SR0HAqE
	jtsOS0rfrzzIA5id4EZjbfaUhq/65rddObvEefrfQXKwDaRyDq8kb8Aj2kKhx66A
	==
X-ME-Sender: <xms:ukWeXK0jdzflCiTbahyHfGC-R9JVBIubxgAGAEqWaoWHur9vNwq16w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdeitdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepshguihhordgtqd
    dqqdgrnecukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhho
    mhepghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ukWeXDxwfxPmZaNHLFBFSqpM1xHMZHeDb8bjLJNdGFpfsig34thpQQ>
    <xmx:ukWeXHUGFy3y8p8jesVz0ThdXXITFL0eOe1L9-__WC5op4vj9Kkfew>
    <xmx:ukWeXKAst38mvQXDFZeX7NYG5QSP8UlK4s8y0VVbXeCIR8rNcswR0A>
    <xmx:ukWeXIAfqW73dyn-ThAGmSDtK9H392FhsaT41Im7C5CHp9-Lbj_rhw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2E63910310;
	Fri, 29 Mar 2019 12:20:10 -0400 (EDT)
Date: Fri, 29 Mar 2019 17:20:08 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: greybus: Remove
 unnecessary parentheses
Message-ID: <20190329162008.GC26815@kroah.com>
References: <1553872280-8194-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553872280-8194-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 08:41:20PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle
> 
> This patch removes unnecessary parentheses while returning a value using an expression.
> Using following semantic patch:
> 
> @@ 
> expression e;
> @@
> 
> return
> - (
> e
> - )
> ;
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-Correction in typo.
> diff -u -p a/sdio.c b/sdio.c
> --- a/sdio.c
> +++ b/sdio.c

Again, wrong patch depth :(

