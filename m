X-GM-THRID: 6808898651661795328
X-Received: by 2002:a17:90a:3783:: with SMTP id v3mr6621666pjb.31.1585320255215;
        Fri, 27 Mar 2020 07:44:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls7434416pjo.0.canary-gmail;
 Fri, 27 Mar 2020 07:44:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv8Ap57bhVXjnjnBml55b/PRIUYW2ks497Mrq5G2h5vDoPsaIYdngBhC8DheH7t9PZ09JUL
X-Received: by 2002:a17:902:b703:: with SMTP id d3mr13793027pls.39.1585320253701;
        Fri, 27 Mar 2020 07:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585320253; cv=none;
        d=google.com; s=arc-20160816;
        b=ev86G9A13TYn/Eul85gwLX+YJoiSGhOAT1RTietYRjRodg2Q7bbWSS4i2vWnPRs9iO
         TP2Df+7qzf5RvvMrsUeQHEUd6lJGcmwVfYm7ukpug0/6yo7uK5OcGWaguJEE0OF76Gjy
         Zf0yq1NA8J1KyxDgTk2JFHP5a4Tn/F3c62byXPXDOSxxmu/HkxPiNEovPKaLl8npZGPs
         Oe5aaK2wXkF10UBYnh4H88CISW0tijwyca70OlPXgba6/jMbOyGgCMygytlrER5d+933
         d8RQke0S9kP3l/ODGn+f0baxAeEV5YT68ckZjEAoySu+EU9Xm4jK9LU9szebHLsyHL1d
         Pfeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=yLjsGLzoayEJ9lh0r6/8/aI2EDrVQLL+I6t1neA4j4Y=;
        b=e6qT07Re1lMMN/8N42Rkno8/cAMbga0RmDbOKB8XiCyzMN/6AQtw8c7RhbbNopo3c5
         CdKUvLTxP343GDQ8tUt3y+o/kMcPzCIoO0yGADpbGOMXLWL+iJNIXCYaY6JVA4p0uH9u
         Q8Fv281uoL2h+K6dUQcwbmSQVWEoym6hDA8J9zzGGEblyUEzH+qUw58PTYIVE5Jm7qy/
         n2heOKHrtuqwA5TkLbz7iUTc09y6l7JwrKIdVNjHyffj9YHMkRmH57iBHe9dEp2ATUEV
         HHOgqVemFV2yWIqRw269IqkHABpjlvOnwcBr/XD/1E1VnIDLE03UbpCCvBBFXvpmJY7V
         PMRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jn+1UWt0;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 185si405449pgh.3.2020.03.27.07.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 07:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jn+1UWt0;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id m15so3865423pje.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 07:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yLjsGLzoayEJ9lh0r6/8/aI2EDrVQLL+I6t1neA4j4Y=;
        b=Jn+1UWt0SACCIleTOgRvHpPltaPR843NJf1V+OgwdLDZ5lFsdY9vHJ2JRYqfLtFEeS
         3tfb5Xvaz1lyTnhvYNrA+ucIx1+vuuGxEV/VMy6ux1UQ90XKJVpmcDRvqQruhNQK6Fbq
         7MCGFuZIU2ld0V8UM3YkQyFOZ6DNaXwbhRQd23lVhj1AlPC9lZrfFdgVsQpkcB59fmCq
         mDNTXvPwSwaL2hPPFp5PG39Rb+nsVwjz5qFVK+KB9D4MHsfbs9gcuV8F3FcN5vNXckij
         Kl7wOFphVQTJSkPZxOddkqSxfN/aMB2lsZJXrffhQsyPhD9V+aOL50fQEzJbnxAaOZ/o
         YZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yLjsGLzoayEJ9lh0r6/8/aI2EDrVQLL+I6t1neA4j4Y=;
        b=rT887vthq8ItJbAU2ZKMn04aHROPCYjKmYapOToCV7B2FTK2o0bb9DRL6aWjLFGvce
         EGSj9gP+kEx2M/k0sa0oEl+Q3jJZckxUkXZJGpII4UH7PcQ7YF4CFTNx3qEZOXUZB2le
         oDphduQnOhjWHw69+qAhgf6BC5THyOE/sFeYvOH8lrP2e1QpfMWKp4jij7G6goyEf2jZ
         JisL9S/EL2bwGjhIaPWmcH9kv65kLQ8vpSw6owUj1Yf5hJHyjB+7LzA/WWTIShpwo1Wd
         wsyJOsNS9mw0ohYHnuVdmb6CYASfGpqZ2PmVnHPDt3WK1q+zKbvQkNGrHiUOKFeJ5Df5
         /dBA==
X-Gm-Message-State: ANhLgQ0X+t8NeGIDOJO9sEuncOQ5OHfb7wQ7wC9YXr449A4Qdb+QVmZO
	U1y5qQsq23fk8JxQyXKbgyaTx6cJQWfLjQ==
X-Received: by 2002:a17:90b:11ce:: with SMTP id gv14mr5762019pjb.63.1585320252954;
        Fri, 27 Mar 2020 07:44:12 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.233.220])
        by smtp.googlemail.com with ESMTPSA id g69sm3939333pje.34.2020.03.27.07.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 07:44:12 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy Kernel][PATCH 0/2] staging: wlan-ng: Resolve various warnings reported by checkpatch.pl
Date: Fri, 27 Mar 2020 20:12:27 +0530
Message-Id: <20200327144229.19738-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolve warnings issued by checkpatch.pl
This patchset properly aligns the lines of a function call and breaks a
line into two lines to respect the 80 character width constraint. This
helps in maintaining a uniform Linux Kernel coding style.

Soumyajit Deb (2):
  staging: wlang-ng: Properly align the lines of function call
  staging: wlan-ng: Line over 80 characters

 drivers/staging/wlan-ng/cfg80211.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

-- 
2.17.1


