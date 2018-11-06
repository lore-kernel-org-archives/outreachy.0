X-GM-THRID: 6620547167797903360
X-Received: by 2002:a2e:8887:: with SMTP id k7-v6mr720008lji.3.1541466327337;
        Mon, 05 Nov 2018 17:05:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9813:: with SMTP id a19-v6ls768625ljj.7.gmail; Mon, 05
 Nov 2018 17:05:26 -0800 (PST)
X-Google-Smtp-Source: AJdET5frLOAy6XOI6SiFYjXKAYB0vZ5iqWwii49zbp519ZDidWHCnTHzafCB+HlAveLCb4J98V2t
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr1772199ljh.19.1541466326361;
        Mon, 05 Nov 2018 17:05:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466326; cv=pass;
        d=google.com; s=arc-20160816;
        b=mPs01df3GI2mGp+S2IK+xDb0SJ3HtluE4/oUZ99l963LVTNp5KGuoPsFy45kX6moC/
         6zKbe5lMU+TTifM1tJ2G4FZxn156z4di8cAN+vrr6sgKAvp708OOwQdL2RzXx2NJ7IRk
         32HGsiuXu1T0pTh4h7i5kiU5JjANjdQWzyKPdyeMJNZbJzT3clyJAbfRzLnrwy6YTs1t
         +GGYe1q80j7GNeEJ5ejpm5Ah44EiI8OQiTASWFDSEqj14k+6KhYmDKcwOdii/cOa2KIL
         1YrmCt4PWxxvJZ1SxIxpZvSGg6Sxh5mkAjh0MAgb/y45AQVOgMe1xekrBHo1vXG50xdB
         MseA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
        b=yrK1qLfhI1qf4/ssn37oQpHxLSNfhMiRRJkO220CGhn08CfGgQowtB724yolrKzxyc
         SDj+Rk9iOJlqkSYTo9yACXHRfH/3xDuaFJbK4GBL7floUrDMcpZovqydvmMOJFm8FC2U
         iqgOTs0QWIjuhOM6fyXzwPj3LrHyXaEw9efSgOHVLg9uuIc9ULgILKYWJqySBbAH0F0+
         JT+asDZmwq1lQvM5ON3HRJEQqqg2DviqoTNXhz8HrFa+OuklOO0tV2ldndcte4DwsXh1
         wyW8IWTS43h16TMWh43LaUMYz93sZEk5VKewuFcUslIJ88cA8h/OpTJ8JE6JRPqVec1z
         bKNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AT2UyYQl;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id i127-v6si983066lfi.1.2018.11.05.17.05.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AT2UyYQl;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466323; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=iKUjRgQMxXPgdYHQaWy+HPVb0Yx5409pZ8bk18kzv8hwQFPJ2UvDS70XvAgAAkuT9mS4oW46WKosybHupgcmoOHYqxpp7Ast96BvQ7x51LWI2wxwRNxPljvMiJhi4zCcJTzGcCJS8Z+WHQQ3jFdeAOzFQGvxvSg5XFpBDh7GH/w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466323; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=; 
	b=iIbahfZCam/dD0grf/DdHdWybjUknc2hpjI4RwkffefFKZx1I18v3fvdby5U4hgAXf8ZIXwSzYK9RJUyyFMKLec8G8+GIatHm/RTj3WI7XuSHO88so66X8k/zo0Bb7Nh9jeoM4hHX6p8hNGa9WiIj8bz+LTu7iQIt7nJCjNeivw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466323;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=793; bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
	b=AT2UyYQldjbb39xcuaEycIfRE52c6cGF4wQ8TIvYeK9wXdKYUNNmNE8HIDi/87xT
	ua6J/wJRv9Znjq0aOgsrbYjFIMhaNlg8G4lH9czAfKdUfrVbOgAGa6NyJDJfBx+YHO4
	X9KjQENODX6oY1+LTqYJC2J5NwxAQqmUanRHUvaQ=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466321314499.7388654092798; Tue, 6 Nov 2018 02:05:21 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:20 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 09/15] staging: greybus: remove space before tab
Message-ID: <cf6f43a964ba5a3a55e7f2631e1eb173bf005597.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra space before a tab character.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 3313cb0b60af..b3bffe91ae99 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -805,8 +805,8 @@ static const struct tty_operations gb_ops = {
 	.tiocmget =		gb_tty_tiocmget,
 	.tiocmset =		gb_tty_tiocmset,
 	.get_icount =		gb_tty_get_icount,
-	.set_serial = 		set_serial_info,
-	.get_serial = 		get_serial_info,
+	.set_serial =		set_serial_info,
+	.get_serial =		get_serial_info,
 };
 
 static const struct tty_port_operations gb_port_ops = {
-- 
2.19.1



