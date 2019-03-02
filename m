X-GM-THRID: 6663844770384707584
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr720986wml.11.1551547768433;
        Sat, 02 Mar 2019 09:29:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a1c3:: with SMTP id v3ls2587695wrv.17.gmail; Sat, 02 Mar
 2019 09:29:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqxoWVU0Uk1s9uG+CqV4khR68o4YuYAyH/CY2jKBjf5JSVHJk1JWyg/qJB+WtZSUUe408C7c
X-Received: by 2002:a5d:4908:: with SMTP id x8mr529405wrq.5.1551547767729;
        Sat, 02 Mar 2019 09:29:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551547767; cv=none;
        d=google.com; s=arc-20160816;
        b=tWQIo0F0d6b6YNToyX7ka+oyGmJz9u9tbgWaciSipebWnmRReuUmbb+IAIqyy8wXwx
         vz+1pGDW8DbI7vyG4WYgoongxDWGS4pwLN8JTb48njlr0Idm/QhKVDhMzrjPVHbCxHUL
         HLxYnG26+sQiF+UpDlZLCwnfS3LnJdzyPHIWYcOeb7GllvGqRUVzQ6KUnYqJmTNYlpEl
         MdII6B+d/C9IvJLzq9poppvvCuz6xQyvrUTOugzQRl+OR1RiSNEBpfz/wLWe41jyGUrm
         BJ/1HzZ2E1jZzzgHUuLGQ5MwBdalUXlChvzCrkeV8adL6+PPpcx8MqaorkcGMvyKXvYZ
         yZ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EnbyhDncql9yTCuVuq20srT5pusdxHYe3kUJQUrqktI=;
        b=JTH4fjeASD3oWj8uzYJKmOM2BR3P+EpmjddfR9DWjP1rT8+EEJHgqQxojgaX4A9i1J
         lPwQL9WsFRM70MeXiE7zOqS302lEBqxC8LCkp7MZnvgKTJpDmAjlkWG6cNSKnP9ZD4cZ
         lFcHQvlh0EugkyF0ZoQS3N34oBOHzhO0QBs8T5ZMy12LCVwJi5A5tWm9jjjJVcq5qHPS
         mRBdoUHB6I2l+aBkLJXQoTIuLLKyLSuW7Cx++vczDKka0bCJisr/IICA0B6LIgKi/Oe/
         8oK9X7aOoSZ2NxlKUK/zpfR2VKbTAbnCykskCxa4CGmNQxoXgpne26YfsEfiAafreBr6
         Vkyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m1si80327wrj.4.2019.03.02.09.29.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 09:29:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,432,1544482800"; 
   d="scan'208";a="371632206"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 18:29:27 +0100
Date: Sat, 2 Mar 2019 18:29:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel][Setup] Difficulty setting up Yahoo mail
In-Reply-To: <30d0b223-3710-4e80-9407-b6faabbe73f2@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903021829160.11898@hadrien>
References: <30d0b223-3710-4e80-9407-b6faabbe73f2@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Nishka Dasgupta wrote:

> Ma'am,
> I've been trying to set up my smtp, mutt, git send-email etc with my Yahoo
> account; however, all the directions on Linux Kernel Newbies (that I could
> find) related to Gmail accounts. Is the setup different for Yahoo accounts?

No idea...  What goes wrong?

julia

> Thanking you,
> Nishka
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/30d0b223-3710-4e80-9407-
> b6faabbe73f2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

