<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\User;
use App\prodi;
use App\role;
use App\sub_role;

class userController extends Controller
{
    public function store(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'nama'     => 'required',
            'nama_perusahaan'   => 'required',
            'jabatan'   => 'required',
        ],
            [
                'nama.required' => 'Masukkan Nama Anda !',
                'nama_perusahaan.required' => 'Masukkan Nama Perusahaan Anda !',
                'jabatan.required' => 'Masukkan Jabatan Anda !',
            ]
        );

        if($validator->fails()) {

            return response()->json([
                'success' => false,
                'message' => 'Silahkan Isi Bidang Yang Kosong',
                'data'    => $validator->errors()
            ],400);

        } else {

            $user = User::create([
                'nama'     => $request->input('nama'),
                'nama_perusahaan'   => $request->input('nama_perusahaan'),
                'jabatan'   => $request->input('jabatan'),
                'tahun_lulus' => 0,
                'pengalaman' => 0,
            ]);

            $role = role::create([
                'user_id' => $user->id,
                'role'     => $request->input('role'),
            ]);


            if ($user && $role) {
                return response()->json([
                    'success' => true,
                    'data' => $user,
                    'role' => $user->role,
                    'message' => 'Anda Berhasil Login',
                ], 200);
                
                
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Login Gagal',
                ], 400);
            }
        }
    }

    public function lulusan(Request $request, $id)
    {
        //validate data
        $validator = Validator::make($request->all(), [
            'prodi'     => 'required',
            'tahun_lulus'   => 'required',
            'pengalaman' => 'required',
        ],
            [
                'prodi.required' => 'Masukkan Program Studi !',
                'tahun_lulus.required' => 'Masukkan Tahun Kelulusan !',
                'tahun_lulus.required' => 'Masukkan Tahun Kelulusan !',
            ]
        );

        if($validator->fails()) {

            return response()->json([
                'success' => false,
                'message' => 'Silahkan Isi Bidang Yang Kosong',
                'data'    => $validator->errors()
            ],400);

        } else {

            $prodi = prodi::create([
                'user_id' => $id,
                'prodi'     => $request->input('prodi'),
                'jumlah_karyawan'     => 0,
                'tingkat'     => 0,
            ]);

            $user = User::whereId($id)->update([
                'tahun_lulus' => $request->input('tahun_lulus'),
                'pengalaman' => $request->input('pengalaman'),
            ]);


            if ($user) {
                $user = User::with('prodi')->whereId($id)->get();
                return response()->json([
                    'success' => true,
                    'data' => $user,
                    'message' => 'User Berhasil Diupdate!',
                ], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
                ], 500);
            }

        }

    }

    public function pengguna_lulusan(Request $request, $id)
    {
        //validate data
        $validator = Validator::make($request->all(), [
            'prodi'     => 'required',
            'jumlah_karyawan'   => 'required',
            'tingkat' => 'required',
        ],
            [
                'prodi.required' => 'Masukkan Program Studi !',
                'jumlah_karyawan.required' => 'Masukkan Jumlah yang diinginkan !',
                'tingkat.required' => 'Masukkan Tingkat Yang Diinginkan  !',
            ]
        );

        if($validator->fails()) {

            return response()->json([
                'success' => false,
                'message' => 'Silahkan Isi Bidang Yang Kosong',
                'data'    => $validator->errors()
            ],400);

        } else {

            $prodi = prodi::create([
                'user_id' => $id,
                'prodi'     => $request->input('prodi'),
                'jumlah_karyawan' => $request->input('jumlah_karyawan'),
                'tingkat'     => $request->input('tingkat'),
            ]);

            $user = User::with('prodi','sub_role')->whereId($id)->get();
            $jabatan = $user[0]->jabatan;

            $sub_role = sub_role::create([
                'user_id' => $id,
                'sub_role' => $jabatan,
            ]);

            if ($prodi) {
                return response()->json([
                    'success' => true,
                    'data' => $user,
                    'message' => 'User Berhasil Diupdate!',
                ], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Post Gagal Diupdate!',
                ], 500);
            }

        }

    }
    
}
