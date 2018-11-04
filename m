X-GM-THRID: 6619842705607360512
X-Received: by 2002:a62:d849:: with SMTP id e70-v6mr1181875pfg.34.1541302238854;
        Sat, 03 Nov 2018 20:30:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:688a:: with SMTP id d132-v6ls7477865pgc.19.gmail; Sat,
 03 Nov 2018 20:30:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fMZYNBdjerUdMdaEvPY8ka11CxZEREs8/6pfmJE4uSZ74/Oq3rpc9zZrJv2yNfEmCIwaO0
X-Received: by 2002:a63:8ac9:: with SMTP id y192mr3803703pgd.145.1541302238010;
        Sat, 03 Nov 2018 20:30:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541302237; cv=none;
        d=google.com; s=arc-20160816;
        b=d58HiuQLgbu7oyrzrgKj5p8VcN9LEFuBjJjq9hpd4VehevuQfS9W16vX62XknLqRow
         yAu+pRojoDY3TKhgTwX5hRTVkKs9cZCUrainAZ2VCw6obyyiEeRX7z+wZugesnc5gpDh
         NrBknhuiUeBZoPF4jqGeSMnT5c+93P4OuTrezi0nYR1Fhp95J9rWhbJrpj6YsS9QAqR4
         /g7ZhXEcgJ5KU06WIyag5LsXrlkC6IOca7k4d/g9tKIlAuA73yYNGBbksPjuoYETtGJr
         FYQn+eEBNZGckKpSkOlPuXatDwClodEPPx5SENyNTxmFeOFSL4Xj/iIbj5JVdz3qoILI
         Gp2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=DmVRYg2+g1rydmihhwWj3UKRyJVBOoM2el916NY5lYY=;
        b=NRJY/VOkSKr9nKtUgOrpQqGbLsx0eio4cPd8KSPZC3V70vXzsT1KEKafLMEdqPOT58
         kzCXexv/IQycKXMXRbzbnTHYy6QklhvQT7IygpqZ5yu2Akj4R5P0CaJmdjtPwPoOBUc4
         LVzJcpuikhtAr4SJShoPj5Wv4Ii7jqMGCIyOFIgBIE6EBktNfs7UI49rHRnk95x2edKf
         Q6AzGZy2RPsI7JfEzUD5zWuQxFQq+bs7JYHJHHii9yN4bPFmas+1QvRx+OkSXfg6IDxS
         gOHkxurgM+5UU/PHH9CstJwXY3Fflxq7wEhL0MjnOW+vKkto1TlMXL/8QkDR3pnrJOx9
         breQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-02.prod.phx3.secureserver.net (p3plsmtpa06-02.prod.phx3.secureserver.net. [173.201.192.103])
        by gmr-mx.google.com with ESMTPS id p85-v6si1968362pfa.3.2018.11.03.20.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 20:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) client-ip=173.201.192.103;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f53.google.com ([209.85.221.53])
	by :SMTPAUTH: with ESMTPSA
	id J97TgMY2Z8nSqJ97UgZ5YU; Sat, 03 Nov 2018 20:30:36 -0700
Received: by mail-wr1-f53.google.com with SMTP id 74-v6so5754339wrb.13
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 20:30:36 -0700 (PDT)
X-Gm-Message-State: AGRZ1gJso80k8uMfIxxhhJehCpz7+B2LlWA02vn7t03+RQPTC7R+nSEI
	l4jiRqZtJK0gtaJUAl6bSAJKTyzzY73+ezeBsHE=
X-Received: by 2002:a5d:6105:: with SMTP id v5-v6mr6524968wrt.69.1541302235243;
 Sat, 03 Nov 2018 20:30:35 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sun, 4 Nov 2018 09:00:13 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com>
Message-ID: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com>
Subject: [Announcement] Outreachy application reminder
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfOoMz0g0McuA//q9FRcuAAR34J04CErOFfw7H1Z3Z8nzRUh9qGAhhXFjkHQycHb68Rakfc5KdCISDrnlgZKIKYQTPR6KsgGBJHtN3TsV4wn8gNMbzim1
 3Dy6ZGF8jl+NqQjPbMxtlVPdWnPK7sC1K1jeOT5P80av/ZAsmRBOFOW4l2lgKivCX6G/jHirfVZJsNybgcepdr3Jk2OtZuOntM8=

Hi All,

As you know, Outreachy deadline for Linux kernel projects is November
6, 2018. So, don't forget to submit your application before deadline.
Here, are bunch of points you need to take care of:

- Record your contributions on Outreachy's website. Remember that for
each project you want to apply for, you will need to record separate
contributions and fill separate application. Make sure that you put
links to patches when you record the contributions. If you have
written any blog post etc related to your Linux kernel experience,
feel free to put links as well.

- We normally advise each applicant to apply for at least 2 projects.
Make sure to add your project preferences under the question
'Community-specific Questions' in the application.

All the best and we're looking forward to reviewing your applications.
Feel free to ask questions, if any.

