X-GM-THRID: 6954659298712485888
X-Received: by 2002:ab0:35e6:: with SMTP id w6mr388181uau.130.1619257800155;
        Sat, 24 Apr 2021 02:50:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:72c2:: with SMTP id g2ls1123399uap.2.gmail; Sat, 24 Apr
 2021 02:49:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzU94mGqwKmeFm4nufRCI+a+vSHGsDzg6/ilnqJi4R6VrqOIr31vktZ2cjE1Rqs+Eour0PE
X-Received: by 2002:ab0:1671:: with SMTP id l46mr6181741uae.98.1619257799244;
        Sat, 24 Apr 2021 02:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619257799; cv=none;
        d=google.com; s=arc-20160816;
        b=IN6xqgvu+q6HCYRqJJWXpS8Hou2Il3cxCvWK7xA+dNaJGZ2buQ55q2iJG2Pg9ajT9w
         EPrWftu+9rvycQeKErSia7mBkskxfsSc/1wnnDN+oW2/s9f/YBZakBP3fkanUWxWXT0r
         tZ9t5PL2k982kvamjb720jJTU7nzgWB3pqjFsesm2qwrTN06jJQTF7e5KgFMEAxxz9rT
         lFc9wr/jyG9rUilzcNZ2YHuIXwgsh+DzE4SMLqFFlHOe6duC0EHtGhCdJnmdhSAgGZBW
         heEedkqPJXJvd0TkiuvVd2L2qFd2Vd7aHYNmQzhEmXL/4GviKc35hJfMPZ8SEGRMkoPe
         jqlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=9O3nf18aQZooH9lbcSPTeR1x5YwvRg/kSgHLvW3FsVs=;
        b=h02p2SosU6jEnhccOXpyTqqm4DGPK+iNirKVHxQzSq1tPDxN9ldJqpcT+npOpOplkx
         vURw6q0tfWPQo2VCYaGIoG5Ff6m3X94ZMQwKWNJCOjFQ7fkTcD6vJ2iu+PTEFmQ1abuV
         iW9pizgRanvf1cxTRuooo7d89X0c9MQ6210sy+oEBXD/ifF7o7OZ3Ki+Fyy9Ijh7hvDt
         UOwSm7BNQAjwYxc8iERBlc1PRRlDm9CIOzwZJiE6RrZY32uKHnB2fBxgvvPwdThZiuwt
         YbCewrNDA4kwNVuSihJ07lla+tjp8GJOdSm4vJgKB1nvm4Oihhx0I4j6nFQGeBKxDv3u
         vQAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.232 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-03.prod.phx3.secureserver.net (p3plsmtpa12-03.prod.phx3.secureserver.net. [68.178.252.232])
        by gmr-mx.google.com with ESMTPS id p12si1208788vsm.0.2021.04.24.02.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 02:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.232 as permitted sender) client-ip=68.178.252.232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.232 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f53.google.com ([209.85.217.53])
	by :SMTPAUTH: with ESMTPSA
	id aEvFlB8bYr993aEvGlAOnU; Sat, 24 Apr 2021 02:49:58 -0700
X-CMAE-Analysis: v=2.4 cv=cpVeL30i c=1 sm=1 tr=0 ts=6083e9c6
 a=QyCWzIxlPHHTYLZ1QDq/uQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10
 a=tYmRhbPFjoNRVs69Le0A:9 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f53.google.com with SMTP id d25so19198230vsp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Apr 2021 02:49:58 -0700 (PDT)
X-Gm-Message-State: AOAM532MqJBibref5SiJI4TUHgJDhPvapMY+IVWGo/aZ8FC5yBB9e1ed
	45T3LniWohJO8kXHWlygvALe0ayP5reCwlftHgo=
X-Received: by 2002:a67:b107:: with SMTP id w7mr6471042vsl.38.1619257797620;
 Sat, 24 Apr 2021 02:49:57 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 24 Apr 2021 11:49:46 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+R6rsehaLLQGbswhBv=u7w9i39xu3NXgCHVSpte5s9Ww@mail.gmail.com>
Message-ID: <CAK-LDb+R6rsehaLLQGbswhBv=u7w9i39xu3NXgCHVSpte5s9Ww@mail.gmail.com>
Subject: [Outreachy applicants] Reminder to submit your applicatiions
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfHe8yZ0XjZ+5Yv1Yen4jxWIskSgAzrUdfgPfeC3rHebjvzd01ENx7cW2eDLfZPsxzPLDFXcRKJBMt38dmlL9oSuyNfdzRTqh67F3b+Wszzj4teG0mjv5
 jbjlOvE3AERhgwA39dbzcXVdC1rS9GmFIMbNWCGZBEa+N5DTpygs3PC8vpkQDMrTeEuDYfq118uuU8u5meNYqSwGBdgSepd+9gn6vgeUN+VFko6CrUSwOkla

Hi All,

As we are only one week away from the deadline, I would like to remind
you all to submit the applications on Outreachy's website. Please
remember to submit the applications for all the projects you're
interested in. You'll need to record the separate contributions for
each link you would like to add there. Ideally you should have at
least one with the link to your contributions in staging-testing and
then others with your contributions to Media/DRM trees. If you've done
any small tasks given by project mentors which didn't include sending
patches to the kernel lists. feel free to record them as separate
contributions too.

Also, don't forget to put the PRIORITY of the projects under
'community specific questions'. This should also include any projects
you've applied to in other communities.

If you're having any difficulty to submit your application or have any
questions, feel free to ping me via email or on IRC.

Thanks!

-- 
Vaishali

