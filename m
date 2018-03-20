X-GM-THRID: 6532871168257425408
X-Received: by 10.129.138.65 with SMTP id a62mr7289492ywg.104.1521579080843;
        Tue, 20 Mar 2018 13:51:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.39.201 with SMTP id n192ls166498ywn.38.gmail; Tue, 20 Mar
 2018 13:51:20 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuOCmA4NVRugHQ+Z4/0smDQ/Q4r6+nHKBjV8WzTz2iMGpdp5s4G+qIRdBwwS/ZdIpKerhiz
X-Received: by 10.13.197.6 with SMTP id h6mr6957618ywd.215.1521579080218;
        Tue, 20 Mar 2018 13:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521579080; cv=none;
        d=google.com; s=arc-20160816;
        b=fjlz65wazMdefIVjaKZtgncprq/fkcXaV+wGpSGZ9Yw9T7LhsNaHk8J8QgrEH3iHeJ
         svuogtAC55zC17bsMpVHtyWpWoTTZWi/rT607UmslV/lQ0fpMcKuD9ycBazWon8Tkibq
         mWpTERK22miveyuuNAigW1oMnhmIVkUWT5pMwk2Qeb11uId/QCrUYpx2sCvGQMe4Akb8
         Y0REHg6zNWJBl8SSYMn9APtQf/oBrXa/lOr46HMNt+72J4eViQde1VhERSL/gFaG7N27
         BJ+0Eg9e6N3MwSQ3YvQyWu6h2WoCytOBInaKmTDKKeTMxvf715XU6LJEtGwvckk6lqar
         h/5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=KVTj8d5vSes3UoijhGKqbA8NXIIriQeVjMmF0cI3j7Q=;
        b=1J0JIqTZsRGIdhIXRb17SORJru2F1AeGP6ZzYHVTzPTRzsKKncDFvygaF4fyKzoboA
         MDZv9kmxWYKypPfqjhb1aG1AoLabsNmFPjut7LokRWkkZCfV4fKvOxOVUpj7JJel7B2P
         +NlVbOPIE490BsR3jhKYaUdotgWCFe/oXonoQVQlYT+KPO+hrhHnoEMngJQWEmLItwnm
         /FCS+kswUSOQoHlOSAP+UHPB0zt7UxPKK8/d4XYGjsY9KbjwBfgCK3SlatIwv57oTfyh
         dQfnVB0HmCtGY3hBm5BLZOy4RhKdfGFdq7fUzug7z9gMj5KSphRvIGDfFAkE/J27JMJB
         WXuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fECfqc7D;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id w64-v6si182362ybe.5.2018.03.20.13.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fECfqc7D;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x244.google.com with SMTP id g14so4026123iob.13
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KVTj8d5vSes3UoijhGKqbA8NXIIriQeVjMmF0cI3j7Q=;
        b=fECfqc7DkxVnZs6dIu3qcljonwOQPVALjDOSZ21vsZWsMJmADm5OQ70bVoM24oQtUI
         wxoTbhEaeY0/SuleYa+NOlUXMSsnLZAEL3S0UQbao0XpHn7wHSXNo3s/zO9Nh/IwYXFE
         Y9c5XStCe/Cm8qv4tENn4D+xzeXicVqvArusQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KVTj8d5vSes3UoijhGKqbA8NXIIriQeVjMmF0cI3j7Q=;
        b=MLZgDOU05u3EJn7agQX3iX0kivtwd96LV5JluVIhvz5z+4iGlkYGc+w2vWaGi/kDg7
         nkn4R+nakWGmJO9k0Im9SSOYGwreXN63eYr65cLy/Bufjdyc/kw8rtI+vkxFhIfOxDcL
         7hlLnkmiKCpmSQ+WZQkCR4/fLXagDjvU+oS8JJtIMni5DEl9EvK/4bQXaQMHFh21edL/
         5lmOwlno0MGdK2WD8weDUMFDhIBGQmhzIEMPL8dC6Ye4UUSRYaUwUretjMXUkNMZYGX7
         sZvD0XN82J+3Ouu+BUCQ8l/HMZ9R8r04UEwQrgV3Hj/sVkJC8uxZkzhyns/UAASzEWoO
         Kcyg==
X-Gm-Message-State: AElRT7H/tUtLxsMEX83LtGWtAN4AQcMyZ6anYhVAKIT8DK+hosjSOg3o
	S2QAde8Si4vG0JaX4pDpIUT4jLes4ZhnWI8zP951+Q==
X-Received: by 10.107.95.23 with SMTP id t23mr18955006iob.242.1521579079675;
 Tue, 20 Mar 2018 13:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Tue, 20 Mar 2018 13:51:19 -0700 (PDT)
In-Reply-To: <20180319153705.GA23694@kroah.com>
References: <1521052574-27793-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180319153705.GA23694@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Wed, 21 Mar 2018 02:21:19 +0530
Message-ID: <CAC4++KBZ5kWgYUVTiPnA_aMbCkBeG0FWhphNeEe5-BRaMCiHPw@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Add blank line
 after declaration
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 19, 2018 at 9:07 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Mar 14, 2018 at 06:36:14PM +0000, Nishka Dasgupta wrote:
>> Add blank line after declaration. Issue found with checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
>>  1 file changed, 1 insertion(+)
>
> You have sent 7 or more patches for this same driver, yet I have no idea
> what order to apply the patches in :(
>
> Please resend them properly, as a patch series, so I have a chance to
> get it right :)
>
> thanks,
>
> greg k-h

I have resent this one; the others in this driver appear to be
variations on the multiple line dereference problem. Since we
discussed the dereference issue earlier this week (you pointed out
that my fix was more complicated than what I was trying to fix), I
thought it best not to waste anyone's time by resending the
dereference patches as well. Was I wrong and should I send the
dereference patches as a series again?

Thanking you,
Nishka Dasgupta

