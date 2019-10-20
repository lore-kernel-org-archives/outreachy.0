X-GM-THRID: 6749323707377778688
X-Received: by 2002:a02:344a:: with SMTP id z10mr19746037jaz.74.1571605191379;
        Sun, 20 Oct 2019 13:59:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:6712:: with SMTP id b18ls2440020ilc.7.gmail; Sun, 20 Oct
 2019 13:59:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyglIN5lPq2YD69t5iHHjojn7mKeQnrKr62aaEPXX8G2qCTg0Z8x4vAbLBmKwiNWR0A8WyS
X-Received: by 2002:a92:985d:: with SMTP id l90mr23655887ili.286.1571605190104;
        Sun, 20 Oct 2019 13:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571605190; cv=none;
        d=google.com; s=arc-20160816;
        b=MeGVDuKiEyBL8FzCB0fPYHBWnreHgWJqTsxQdyk4l5tPfKZk3zJrkCTNlxmOsAsYHF
         FIVBtHcLT7gWasiPwTSEqjbbYoGP2uDBu1KpvtvXGBK32je0wwdauw+jvZzaQO0XlcMe
         7VvYirrFLJ7wevjihS24SDn7kaG8cmWOJ4nGi5eLHM1fFyxP4qdYQX7jD9d8i+kCmI6Y
         MFH73INkvyd6UinX3NcqJZrNjdkK2jt4SnTJXrS02tWRcOsYg1dGdSRt9/Kuve11j0iH
         5ROTsXERrP8vPdmWc4rmwhuqxlsvGsDZzHg5GNSi/PVssF9mCzv8i/P130h7QjNiTIcU
         5SOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qZ/BvhAnt/0sbzSj5QTNd6LxQjRBZuGPgnmtNq0RrXQ=;
        b=WcKGhrKKBRLImuL1an7mFMVpntevzzvaNgzVcHQC/U46NUw/ybm803cFwGbvZTFLGv
         Hii9K8ft1Xjj9U5V8/acRcrVyDdBkBMEQDqdwqOjb5tru96KhfrVGilTelhJytXnDaMM
         8DHzfn5/2A9GQe155Oe7FZ3JN7ZQKUEYgcmc1MtZXeUUeHRqo/hF6Gu2wt5p2kVujpnH
         DeLiZHCaeDGfGHeliKqGodD/zJOUHAFG+THklhcIEZTcyZYdBRKVOLqyn0HRsjk3ta6M
         JRsNVvYZxVZivRSEDfWXVvOHFwhzfiI/4VZEeS3lNxTuUEaIoYXHWaK4TcjWtMUKWn/A
         zNnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aa6BZ+T3;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id i8si655505ilq.4.2019.10.20.13.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 13:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aa6BZ+T3;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id 4so10475053qki.6
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 13:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=qZ/BvhAnt/0sbzSj5QTNd6LxQjRBZuGPgnmtNq0RrXQ=;
        b=Aa6BZ+T3Vc+ss15nHoqLTFZO7mQv7KU+A698JOHv23Hkk4F2sNatxMYAnF87HHQ35S
         Smefx9PnKOgmvoyG84nWtY4Rgek030GNvkMnEppGFymPTXxg1sqVfSLtDtzXzG9tSXAx
         YCjb6fJJDNPLxxuxssfQkiNqu/jespJR2hGg6333m+ugf5I8SSK2O3lvdPaUcNA7qtfR
         1ID3F4b8nm/78PvvNn6KWA+bb7XIqRv57OQn6s1b3TjFA+ih1Kqwi6woUP/Ec0ovLHYi
         2s9gw7cUqIwPHv5kBmILMZ3rit9hrBVRpvz8uQit/bj9oBfUt/7Z6WMONWom281s9Xuz
         zl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=qZ/BvhAnt/0sbzSj5QTNd6LxQjRBZuGPgnmtNq0RrXQ=;
        b=Y5FDxnbdoS8AclwBodyzuC9T6OkbrujrIIt4dM9Z67ASGReiolIsqOiFfO02RFtaiI
         XWm+IDpJ0YUvporP0e0n2Rt0iqh8yKLGrPfF5J1XPme3yZml/wm4R2SZ1BXmjqGbiOvQ
         TIpI6SGqhIHNTLM3znSdlWYOwgj6YB+Wz/GUGyV5+ArrKGU3HDlI95OLwvpgkEu4F/3h
         iGlL1ngQyvfWpmSPeFIh6RMMHJuLKChS3dfjSOlHrwq8erBg2BrOV67nqaY+zaSwL0IR
         Evn0LcM4+u2uAyR3U9hY3fQ5VwvRdnV+NlguIe/yTJ4J7VZxaPKz4G9LeeNwNcbHSUnY
         fQbQ==
X-Gm-Message-State: APjAAAXpBXUGQEZSNGynkw8IG+OFhxESdvucqV1gDb6xUoIHhqpjIdv8
	ZNflia/F9U90cS1QxFIZ8m5kUaNDB3ZJrA==
X-Received: by 2002:a05:620a:a4e:: with SMTP id j14mr19880726qka.2.1571605189555;
        Sun, 20 Oct 2019 13:59:49 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([172.98.66.22])
        by smtp.gmail.com with ESMTPSA id a190sm7245130qkf.118.2019.10.20.13.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 13:59:49 -0700 (PDT)
Date: Sun, 20 Oct 2019 15:59:46 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Adjustments in function call
Message-ID: <cover.1571604372.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

V2: Update the message of the second commit to include the updated
    patch version and to use the Suggested-By tag.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


