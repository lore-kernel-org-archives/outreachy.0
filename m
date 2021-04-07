X-GM-THRID: 6948352015621685248
X-Received: by 2002:a67:eb4e:: with SMTP id x14mr1212316vso.6.1617789272101;
        Wed, 07 Apr 2021 02:54:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:eb50:: with SMTP id x16ls196814vso.4.gmail; Wed, 07 Apr
 2021 02:54:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVx2zTuUPvDNz4qnsGgbWe+1uCaH4SKqNb1WRJqHd0pJ87ilTFOdYRTCXGby3U/aI8kAG5
X-Received: by 2002:a67:db03:: with SMTP id z3mr1309846vsj.0.1617789271179;
        Wed, 07 Apr 2021 02:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617789271; cv=none;
        d=google.com; s=arc-20160816;
        b=GvFhZ5PgGz9QYiG6bqwuVAJxAeoLputxBR0KGE6Ydw//TXLM8mJieOX0YKWmdpJTN1
         lJC5SAGm+88KdjGdmfMXup92+fjLSuZKR5/jt9xSnA8Prm+6uR6sXvkeK50kJGVH6eLb
         DZpNkK9s12qGeWNaWU2Wx9AwOHpr9/KUFqbFywV4SspfVdC9qfovm+yIuzF6rZ/9iM19
         8t1O3ZKZVjGcXphDM5sIEXE5JtsmcGfcXiTGnGI0WFpuo9IA0rhZa7KxiA2G4kJf0NRp
         EyAosgykRUhJPb+9o6shDwTGHB7/rxYhcd5A3mRdfAHQCOMU234qceqio5jkV20xoS3r
         qokA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=KmZmxsJ00ZK+8HJh/N1+z7jdY9UtIFrlMPaHMyyRa9w=;
        b=opb9iUhGyofo/jZEgiPrNzKjcjlbRDLF40HqwPH+VeHwB4fmq87eUnH7iSUJxl/dMi
         1KCaG6qrT9OaRVlxNK5+Sis1FG6dBF1CpuB3aTQhmwklSvg3sLpDOaR5MReZYT0uVZAR
         CcV6gDFrcvLQBmhBbPpbkSQZUpRvVELvYC/q0JqShs3TVDtZzBt/z/h2HeiKrmVXz5og
         YH/yVxvcRizGf6v5YFHwv9+9mzbp3TWiFRvPcRXVq37sZftCc2jskrx0JHfpEu2t/xLZ
         CX5GJXgGA/N2hy4WkFfMNh5AK8fvq4+/utzZrX8BA/75k4F6Ss+Ro9A3UpFG8NGJG0ag
         XMIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-03.prod.phx3.secureserver.net (p3plsmtpa08-03.prod.phx3.secureserver.net. [173.201.193.104])
        by gmr-mx.google.com with ESMTPS id r8si1458795uat.1.2021.04.07.02.54.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) client-ip=173.201.193.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.104 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f47.google.com ([209.85.217.47])
	by :SMTPAUTH: with ESMTPSA
	id U4tIl0VaRgP25U4tKl9ovQ; Wed, 07 Apr 2021 02:54:30 -0700
X-CMAE-Analysis: v=2.4 cv=c6Zu/Txl c=1 sm=1 tr=0 ts=606d8156
 a=GFkePgBPOPvmhUBO7sJnuQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=xq3W2uTSAAAA:8
 a=NQBKhmYezNLsUFbkRbEA:9 a=QEXdDO2ut3YA:10 a=P5L7wpMTXyg1GfFA3Gwx:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f47.google.com with SMTP id q4so4013511vsm.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 02:54:30 -0700 (PDT)
X-Gm-Message-State: AOAM531yMPPhaD8nOd7Ejou2EQha5OETzvMRW0DGVBOMtbt2NKy32RTm
	XCmJJo4H5tGDDc3u6NU8d2sZGYp/NfVAtZ67cUc=
X-Received: by 2002:a67:c01d:: with SMTP id v29mr1219119vsi.23.1617789268646;
 Wed, 07 Apr 2021 02:54:28 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 7 Apr 2021 11:54:16 +0200
X-Gmail-Original-Message-ID: <CAK-LDbLuvu+jVNYAAEnA9w78C9Ad=3Htw=ghO8-2RmC4sURXhw@mail.gmail.com>
Message-ID: <CAK-LDbLuvu+jVNYAAEnA9w78C9Ad=3Htw=ghO8-2RmC4sURXhw@mail.gmail.com>
Subject: [Outreachy-applicants] Sending patches for the drivers/staging/media
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfDXDvv0I3aANpyc9IYisfbB4NyG7SHSL3hxisAwOC3eum7SBsnTJE+juRNi697YN3/g2XG3tJ0eLJis+u8jAcXJ+nMie7BK8AwUy1nJbhpSQPDZEbu0N
 /EvZslBqx8DhKINZKxQTkkwlqp12Zd3+o1Za3wO6Y9V5Fh/bGGcXyJ22CTk2XnusF7rYKWQlbr0SnHj/6FtybcMCdblIcD5+Y49tKcRkxYbj3bxGobZRgxlE

Hi All,

Please feel free to submit cleanup patches for drivers/staging/media
directory now. Hans has agreed to pick those patches and add it in his
tree. Ideally you should be able to see the status of those patches
here: https://patchwork.linuxtv.org/project/linux-media/list/

Towards the end of a contribution period, if some of your patches are
'under review', feel free to put the link of it in your individual
applications.

Thanks!

-- 
Vaishali

