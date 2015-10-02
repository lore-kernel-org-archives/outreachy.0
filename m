X-GM-THRID: 6201028440983863296
X-Received: by 10.180.72.68 with SMTP id b4mr137459wiv.2.1443815083579;
        Fri, 02 Oct 2015 12:44:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.233 with SMTP id fb9ls446760wib.26.canary; Fri, 02 Oct
 2015 12:44:42 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr126566wia.7.1443815082853;
        Fri, 02 Oct 2015 12:44:42 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id hs5si14218wib.1.2015.10.02.12.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 12:44:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MGoe9-1ZvamZ1bqD-00DWz4; Fri, 02 Oct
 2015 21:44:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove unused functions
Date: Fri, 02 Oct 2015 21:44:41 +0200
Message-ID: <1694471.Iom2lyyDzT@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443789424-17072-1-git-send-email-shraddha.6596@gmail.com>
References: <1443789424-17072-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XHp9imeOWtx0YQi+NBzTPt9Mo8qlBpREAxBqZ+rcCtUeT4GD/Qp
 NsViR5l4dkEoNd2InA4fn3GTxS1YLm0d4G2G5FjXWDJ6OGvqcxZSC7GcIlyYYGdNuu9OD28
 YU/935UaF7HOy4YUqjKRy0gQtbjE1k4ZGh8QZ8+sx+IY7Ra6Xvpd3ITWigOuC8Ei5iETUoV
 c5isQAtPqPI85DMQ4ULFA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8JD2QgJZNE8=:hPc3NQULoXnVJMxYAghF8j
 PNJktBKbSuMbVFeiNfFDLCAdxRrAC3ePpSASwm+tXE7dtqioKb/LSqpkQFeDLq0Hkyr48YMao
 srMlm45Gz9gdPxfDsEN8PTK3cRPxjzSDwdR5ZBSAFw2FRrVLCGllvmM94pN7L4Il0m7WzDRE2
 Bj2rRr6gSARDxxqb3GJLL3/3CkW2e4J7yVhLEZvmCYoq+bIHmkcMi01FAxtJeWXFDokJ/U8zT
 4TaX29Jwmuzx5WXcXB5/d+arjYgW6O6SEZrMdta7TXgskjjuVXiTUNrDERMXY1Wl1wR7vP/XO
 6XFQItVESwVjoc4CfJC6g8IE+/IX/okK8t5S+Yzy+8LoX6mRbQpkALdtVo4Vk6L2efVa6aAfK
 akgViqrmu5qvhhC/gDV+W8LZzRIdKpTB9+7+B54lIZzEye6z/gktog+/IgsDJJsQtUZ0ZDXOV
 WKw+VJBjrdBG7OONn9U+Q/znxAvqhLcB/WSIVl1daHfwJayL4fABNjRjZW/Pq3tm5S10y+RkN
 4LIuXvbac9vByt0jl8hFiwul3AUUqtkERrssPUhuAXiVaivt7keCidAlzKrAl60ZfRLvgj/vp
 UFkKpZGWzPF9QNq7cuDTZQ6E6bjTqfuNpoZKgOQpmZMKyBftLMXhQ0ArAvBLfVtfeWZg5SDec
 +u3/ybz/CsI8xF/VCAs92Z6Hyfi3nQQOpwzV+aTQSoqUfpz/ZS42+987he1oRFBJ6y2rtUyUC
 M8bxqvDdI182SNJw

On Friday 02 October 2015 18:07:04 Shraddha Barke wrote:
> Remove dump_exports and print_export_data as they are defined
> but not used anywhere.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Good catch! This became unused when I removed code from
class_cleanup() last week.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

