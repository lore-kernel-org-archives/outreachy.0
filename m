X-GM-THRID: 6250792352904904704
X-Received: by 10.13.219.80 with SMTP id d77mr13961655ywe.39.1455501431933;
        Sun, 14 Feb 2016 17:57:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls2850257qgk.69.gmail; Sun, 14 Feb
 2016 17:57:11 -0800 (PST)
X-Received: by 10.13.232.195 with SMTP id r186mr13736838ywe.30.1455501431297;
        Sun, 14 Feb 2016 17:57:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id g136si1885213ywb.5.2016.02.14.17.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 17:57:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id o6so50994331qkc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 17:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=P7q0TOhpSGtvWk821XlIs4wjUs3NcodzkocT8r+HYnM=;
        b=0uT6RY0XYiBRDbTXqRMsWp8JUo/FV9ZOvehzduijdpZfaLH6azmCGKttDugh1dhrzA
         FTMhm6kD4iYQk/5p242zRE01t074ieHOKF97veJUkue3LAAys+r5KcL9pAf58LIwREbI
         IOWC4h20IknzKlk8Z8QNrF//ASGqJ10AzzZZh8Yt5+Ed6B0KWmUPi9IT356KX0jvoC/r
         0rGzaUUzmH2L+nzTojoQsgOLpKLfU4xzfLYJv2LnQEN0Z5lqboFTeqa1KB9PWDL7bWWc
         poe42klkBFv0SS9J7CRNjhz7zRwm9aRJEj/Nc6FhDHQc9LfRVTMVtlm10WAgucXHnHuJ
         mXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=P7q0TOhpSGtvWk821XlIs4wjUs3NcodzkocT8r+HYnM=;
        b=GPDKteXLpWg+ZAlSCRUXRYr3TDfh6Rl8I3Zi+4h7adkVxgKgoWeDwviM/5Srww0gz3
         DMwoHAhdbbpv7+5jZ5ILs++upvHu14Nps/auc16rMKZ3cZ4SykQRcpz5NlM7oGBVLe3N
         rSI137e3rehROpwI/qr5izASUyfYJ+pS5SotQ2hnJLUWJ+kPt7GaLs6h2TR/GH0k9ke6
         6L3jEljua/1ku+CaaVMu3lKxpqvnx8uNyna1GwVpKaPVwYCep355QIuZVtGyiysc8hfa
         M5sQjF9EXsE8dYlp9rYopISR46UxNPphJUVBfQRNvhGIIw6QM20q88oU7D6CCZLQr6vm
         kCVA==
X-Gm-Message-State: AG10YOT1d/oLrFUZBdbRgHypl363Io5FXV5S+sohySW5OC31+hLS1y58iNZfbCfznO+NLK92wtcPmgQ4m8RRaA==
MIME-Version: 1.0
X-Received: by 10.55.41.11 with SMTP id p11mr12714017qkh.86.1455501431129;
 Sun, 14 Feb 2016 17:57:11 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 14 Feb 2016 17:57:11 -0800 (PST)
In-Reply-To: <2531432.nXVqgmrLL5@wuerfel>
References: <20160213150641.GA26097@amitoj-Inspiron-3542>
	<CA+5yK5HYMRvS0u_021v68oJnHciYh5MHboO2EwoCrAs+QzRM9Q@mail.gmail.com>
	<alpine.DEB.2.02.1602141845590.2066@localhost6.localdomain6>
	<2531432.nXVqgmrLL5@wuerfel>
Date: Mon, 15 Feb 2016 07:27:11 +0530
Message-ID: <CA+5yK5HBHpahhnDZ+umh9ZA8wvu84vQvMm8apaqqKAxh-L2tjA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 15, 2016 at 1:07 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sunday 14 February 2016 18:46:48 Julia Lawall wrote:
>>
>> I agree.  Maybe a reasonable solution would be to check for NULL and, if
>> it is found return ERR_PTR(-ENOMEM).
>
> That sounds good, it would even simplify the function.
>
>         Arnd

Okay. Will send v2.

Thanks,
Amitoj

