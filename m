X-GM-THRID: 6204754090721804288
X-Received: by 10.129.72.83 with SMTP id v80mr5943282ywa.11.1444675640504;
        Mon, 12 Oct 2015 11:47:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls2204408qgj.56.gmail; Mon, 12 Oct
 2015 11:47:19 -0700 (PDT)
X-Received: by 10.129.73.143 with SMTP id w137mr25217085ywa.19.1444675639651;
        Mon, 12 Oct 2015 11:47:19 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id uv4si2035555pac.0.2015.10.12.11.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 11:47:19 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LymAB-1agtjo0vfb-016B6o; Mon, 12 Oct
 2015 20:47:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: host_interface: Remove unused code
Date: Mon, 12 Oct 2015 20:47:14 +0200
Message-ID: <5782603.WT2Psu7Rf7@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134@gmail.com>
References: <cover.1444670615.git.shivanib134@gmail.com> <89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:QLZHtSfjJNTiMu/bgVDufNx7a4VzKrUu/mMb8uSjxCcpr9HdgaT
 Ft6OHRI3Le7jgqLYNDPenZGll0YeZXTtzvSWAbUHjIJ1MCyC/3gR53C7JBrYO7e+T2Ww+Uj
 f725QkzCXLOyIOtxfcdZNXDpNGS0ykDavHhYss70IyDnqM2JtLNPoTdbZlhmG5/cXpcCIld
 B14jCMkKQxU1uM8xb6k8A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:S3r4wqke8NQ=:ffqin9EhJ4E76eHyLd0A0C
 riPiiL/8bQTfzdBv0jcx9MhDx8bEDKd5mOOHokCotY2fI4GEiMM4HbQPunKCg0V64v9ptHkKy
 UF3XmZnhZkKGRweN1TYi/QHg17LvU3MXrD6qJvRQbMkjQPROZU0izuoqldK0AxakMzluF0poF
 pOmOLHX7VLbgcX1V1A+7H82rXsKgrXMkfP/CnlfLMQ4xVCMQjeInGeOFRP/FAhQxsuwb7NiH8
 YkhwspYmbqis1nfhYZnyCK/VVuVF5diyZyzLiPNZw7uYQAf73BZrRQYhqnCeC4X/OF/CPnA44
 /6zhHnwlkUYBDefHP3tw+GvrI7Jgq7upOB5U+yhyRRjKJccSavsdmN3INPjRitZgby+zc0I+4
 H4flsGEi92HNiUOZvUSZUxME1wnvKEYbLJ+QKg1AKVj1hCAyn1uZJ14hKMUrZ5/kEZGf3Ax1w
 Uz57zRen5s7bmLShG3CcPFFjOztGAowi4GVzDvrJOdYq+yLlzXi6vTyJeXuVh8hC5r48sIA1i
 AWfJ5Ce5yiZwAUNiMAkL2/VvwUjQq+OYJaANmDIADZ8ZoQNv7iGjMx2dxqj+eS4FX0hhGGRdl
 QyeoYo34SYXlNw8z2mzYg+rlMp47SDs5GFU+NrGpeqMCwLvc+hQmu1yWv6+oBbzYw0CT9ZtR+
 PZnyYtccpdcURXpktGGWy5oWDxKEx8cwCdrV1jTD2qDuamO6yX8+EBFJpAPkRJT5hJkNA5vKH
 O9NVcRHqbuOVmdnZ

On Monday 12 October 2015 23:03:33 Shivani Bhardwaj wrote:
> Remove declaration and initialization of variables that are not used
> anywhere in the code.
> Issue found using coccinelle.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

Nice find!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

> ---
> Changes in v2:
>         Deleted one patch and added another. Improved the other ones.
> 

This text makes more sense in the introductory mail (PATCH 0/3) than
in the individual patches.

	Arnd

