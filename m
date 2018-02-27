X-GM-THRID: 6526929159245004800
X-Received: by 10.36.133.213 with SMTP id r204mr11310005itd.16.1519737831683;
        Tue, 27 Feb 2018 05:23:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.9 with SMTP id g9ls217539iob.22.gmail; Tue, 27 Feb 2018
 05:23:50 -0800 (PST)
X-Google-Smtp-Source: AG47ELtn8dOjpGCaNogPSzwoqpAGZ0FjSpm1Sk0DFgTc1B+EWXymDYIKZo+nPVLJt9OqUvVn4wlO
X-Received: by 10.107.10.39 with SMTP id u39mr11039309ioi.115.1519737830597;
        Tue, 27 Feb 2018 05:23:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519737830; cv=none;
        d=google.com; s=arc-20160816;
        b=VKo1CYOjrKgV09IQ82SsyDj4cbvYMsHUvBm1X+xizLmN9GdJJzEX5eOrZgb4QmLfZj
         pBZoi++zGB6drkR+ZePHYA5al64FifLlSJ1cKus+P2f0XT3cWCENOHOoH1L8ddu7KhiD
         +XX1iTycRbj1dSDlCnKPDq+I1fA2Yk/S8XdYYlbDPY1Cbt0/zum9ihXCbad0ERdXD0cg
         64zZzomzlU9rNPV1lAJq0EI93anBM6KBjnnNYCR4Q3NlF4IwyUl29KlN36m63THjnkk2
         3SA5Dzv2Yj7PPNIFv2dz1mRfhVLQUMKUJoY3h8gsEpmQsMsIDJu1vAuw5J5GPJ3/Fub6
         AgFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=YFCQmhW+InnTyMyho9soAxaLx0omievHYMh7p1Cszns=;
        b=TG8e1IBrdnZF3e8Q7Nmevj3PbV7IZ9+RhPJTe7KHfDPYTEhRd7KStljzCPG4Fi9q6w
         kswvBAxtYyIRw1j070fLnkeyvrw/Y7HKYVRXFyPTG3Bobams2ctuuxtuKx9BzgfrvOMo
         k//hgIVB4jX4AaGECy1RHGg1GfQb9Ypo9zriFygFNdi4VzoT5cwlaKCzoVBqdmfG8BQ+
         GbYbdtH5m87A4fHwHujlpQpzL0RHMdatWoUfuueuqCgtlL3qpiXh3ZfoIhRf78g5d/9T
         wmSIh0zifnfjKX5Yh7zbUsRR0myQXIi1hl+TuLYTjW9VHQGzLltMYDHHRLTKzo0snDFw
         UBBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SZWowhDr;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id h1si704250iob.1.2018.02.27.05.23.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:23:50 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SZWowhDr;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x235.google.com with SMTP id 17so7922834pfw.11
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=YFCQmhW+InnTyMyho9soAxaLx0omievHYMh7p1Cszns=;
        b=SZWowhDrqbUU/9qo4BJFDEa7r9v1sJgblrKd1YfGeT/v0EL8/7WneRLjMBk0kKdPXh
         rA9bT6bpUfdOt7pA5XXKJ5oG+dSt5cd5kVU0LArZTkOdGRWNAFgEOxXdnE3hf9PsrNCq
         XJhxJdSHqVVL1c30RA3fiN+twMOuY6aNNyEIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=YFCQmhW+InnTyMyho9soAxaLx0omievHYMh7p1Cszns=;
        b=iGhXy+OebhyzJyYSzO1408EIqdaeFh4AhoX+cqXF2Bv9rqcnif/cFMG30EP2yp5odL
         ILRWYzdGcYCNiy13Yey1DiQgKyTjuWSYalwbXwAiKmRAHNAauTNvnyGrcf46kdBKohBa
         Qv8YOySTkLTJn9Yy+MdDFnF1mFWXR/v2cjnpPKH1fvdtW8ryFBbrqiTWBB27pNJUWPYi
         OvZ8fLO4hAtWgKkem7t05JwSUXIJ+/C2jZMkhzYoKO3QnVLfGuwudVKDTQlwVgXAIzW2
         lh7+St9PuO58XW7YqLvLTL5os5wrapvb27rO1HCqH5rCxoyXlR/vG74RPKHUn5+bamT5
         a6Sw==
X-Gm-Message-State: APf1xPAPUYpVM5z1WbQjlfytiFZT0wY4F6/qFjJZqhc+tNbxyRSQyD1+
	/37p6KUq+lmd8IQhjBZoHYJSyf6T
X-Received: by 10.101.92.138 with SMTP id a10mr5359766pgt.129.1519737829499;
        Tue, 27 Feb 2018 05:23:49 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id w23sm22878039pfk.10.2018.02.27.05.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:23:48 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re: Re: [PATCH] h [Patch] Fixed unnecessary typecasting to in. Error found with checkpatch. Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 27 Feb 2018 18:53:38 +0530
Message-Id: <1519737818-4809-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAOCi2DFEG2FRaZ2HE5g4uNHmztSvPFC=COEnZ6ucuAYhxDz6Wg@mail.gmail.com>
References: <CAOCi2DFEG2FRaZ2HE5g4uNHmztSvPFC=COEnZ6ucuAYhxDz6Wg@mail.gmail.com>

Hi,
Thank you for pointing out the formatting errors. I have deleted the unnecessary [Patch] and added the driver information. 
I could not, however, work out how to separate the subject line from the body of the text.
I sent the commit to the maintainer of the patch in a separate email as I was (and am) not comfortable with git send-email, though I am doing my best to learn. I have sent him the revised patch, however.
I don't know why a and b are prepended, unless you are referring to the variables that I added, in which case I would like to clarify that I did not want to use names as generic and vague as a and b for the new variables, so I appended part of their respective values after the initial character for ease of understanding. Should I have used more descriptive variable names?
Finally, I did compile the this particular driver (make path/ as on the website) and an output file was generated for the modified file, so I took that to mean it was working as it should. Was I wrong?

Thanking you,
Nishka Dasgupta

